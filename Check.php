
<?php

define ("NAME", 0);
include("lib/get_supported_css.php");

class Check {
    var $projects = array();
    var $spreadsheet_url="";
    var $repo_col = Array(2,5,8);
    var $url_error = Array();
    var $cfg = Array(
        "p_root" => "uploads/repo",

    );
    var $tags = array();
    var $types = array("html" => [], "css" => []);
    var $stat = array();
    var $popular_tags = array();

    function Check($csv_link) {
        $this->types = [
            "html" => "-name '*.html' -o -name '*.php'",
            "css" =>  "-name '*.css'",
            "black" => "",
            ];
        if (!FORCE_UPDATE) {
            $this->get_tags_from_cache("cache/projects");
        }
        if (UPDATE || FORCE_UPDATE || UPDATE_PERSON ) {
            //$this->get_blacklist();
            $this->set_tags();
            $this->set_needed_css();
            $from_menu = get_from_menu_css_tags();
            //ddump($this->tags["css_table"]);
            $css_not_listed= array_diff($this->tags["css_file"], $this->tags["css_table"], $from_menu->all);
            $this->tags["black"] = array_unique(array_merge($this->tags["black"], $css_not_listed, $from_menu->stat["black"]));
            $this->set_projects($csv_link);
            $this->deploy(UPDATE_PERSON);
            UPDATE_PERSON ? die(UPDATE_PERSON." update finished") : '' ;
        }

        $this->get_tags_usage(MIN_COUNT);
        $this->clean_unused_tags();
    }

    function get_tags_from_cache($file) {
        if (file_exists($file)) {
            $f = fopen($file, "r");
            $this->projects = unserialize(fgets($f));
        }
    }

    function save_projects($file){
        $f = fopen($file, "w");
        fwrite($f, serialize($this->projects));
    }

    function get_projects() {
        return $this->projects;
    }

    function set_needed_css() {

        $dom = new DOMDocument;
        @$dom->loadHTMLFile("css3_browsersupport.asp");
        $dom = $dom->getElementsByTagName('table')->item(0);
        $rows = $dom->getElementsByTagName('tr');
        $data =  new stdClass();

        foreach ($rows as $row) {
            $i=0;
            $cols = $row->getElementsByTagName('td');

            foreach ($cols as $col) {

                if ($i++ === 0 ) {
                    $name=$col->nodeValue;
                    $data->raw[$name]=0;
                    continue;
                }

                if (!empty($col->nodeValue)) {
                    if (!empty($name)) {
                        $data->raw[$name]+=1;
                    }
                }
            }
        }

        foreach($data->raw as $key => $val) {
            $this->tags["css_table"][]=$key;
            $this->tags["css"][]=$key;
            if ($val < 4 or substr_count("-", $val) >= 2 ) {
                $this->tags["black"][]=$key;
            }
        }
    }

    function set_projects($csv) {
        $csv_link= (DEV) ? "pub?output=csv": $csv;
        $file = fopen($csv_link, "r") or false;
        if (!$file) {
            return null;
        }

        $noname_count=0;
        while($noname_count != 4 && ! feof($file)) {
            $line = fgetcsv($file);
            if (empty($line[NAME])) {
                $noname_count++;
                continue;
            }

            $names=explode(", ", $line[0]);
            $c = 2;
            foreach ($names as &$name) {
                $col = $line[$c];
                $c+=3;

                //Richard teeb teist projekti
                if ($name == "Richard") {
                    continue;
                }

                //Leia github-i lingid
                if (stristr($col, 'github.com', false) ){
                    $user= explode("/", $col);
                    $base = $user[3];
                    $this->projects[$base]["name"]=$name;
                    $this->projects[$base]["git"] = $col;
                    $this->projects[$base]["user"] = $user[3];
                    $this->projects[$base]["p_dir"] =
                    $this->cfg["p_root"]."/".$user[3];
                } else {
                    //Leia tühi või vigane repo url
                    if (empty($col)) {
                        $this->url_error["empty"][]=$name;
                    } else {
                        $this->url_error["wrong"][]=Array($name, $col);
                    }
                }
            }
        }

        fclose($file);
    }


    function deploy($user=null){
        $changes = false;
        if (empty($user)) {
            $p = $this->projects ;
        } else {
            if ( array_key_exists($user, $this->projects)) {
                $p = [$this->projects[$user]];
            } else {
                die("Github user: $user  is not known");
            }
        }

        foreach ($p as $project) {
            // Start output buffering (capturing)
            //ob_start();

            //var_dump($project);
            $project_root = $this->cfg["p_root"];
            $project_name = $project["user"];
            $db_host = '';
            $db_pass = '';
            $git_url = $project["git"];
            $admin_email = 'www-data@ikt.khk.ee';
            $members = array('valdur.kana@khk.ee');

            $config = new stdClass;
            $config->admin_email = $admin_email;
            $config->changelog_link =
                "http://ikt.khk.ee/~valdur.kana/vs15/koik_tagid/repo/$project_name";
            $config->db_host = $db_host;
            $config->db_user = "$project_name";
            $config->db_base = "$project_name";
            $config->db_pass = $db_pass;
            $config->git_url = $git_url;
            $config->project_name = $project_name;
            $config->config_folder = "$project_root/$project_name";
            $config->project_folder = "$project_root/$project_name";
            $config->project_members = $members;
            $config->emoji = '\xF0\x9F\x9A\x91';

            $deploy = new Deploy($config);

            //var_dump(!$deploy->need_update);
            //die();

            if (!$deploy->need_update || FORCE_UPDATE) {
                $changes = true;
                $this->get_file_list($config->project_folder);
                $this->analyze_tags($config->project_name);
            }
            //var_dump($deploy->last_commit);
            //$this->projects[$project["user"]]["last_commit"]=$deploy->last_commit;
        }

        //Write changes to file
        if ($changes) {
            $this->save_projects("cache/projects");
        }
    }

    function get_file_list($p_name){
        foreach ($this->types as $type => $find_arg) {
            if (empty($find_arg)) {
                continue;
            }

            $raw = explode("\n", shell_exec("find $p_name ". $find_arg ));
            foreach($raw as $file) {
                if (empty($file)) {
                    continue;
                }
                $user = explode("/",$file);
                $this->projects[$user[1]]["files"][$type][]=$file;
            }
        }
    }
    function drop_long_css_tags() {
        //foreach ($this-
    }
    private function set_tags() {
        foreach ($this->types as $type => $val) {
            $filename = 'tags/'.$type;
            $line = trim(file_get_contents($filename)) or die("Can't open ".$filename);
            $this->tags[$type."_file"] =  $this->tags[$type] = explode("\n", $line);
        }
    }

    function analyze_tags($p_name){
        $project = $this->projects[$p_name];

        $this->projects[$project["user"]]["tags"]=array(
            "unused" => array(),
            "used" => array());

        if (empty($project["files"])) {
            $this->projects[$p_name]["tags"]["unused"]=$this->tags;
            return ;
        }
        //$files="'".implode("' '", $project["files"])."'";
        $data =  new stdClass();

        $type="html";
        foreach ($project["files"][$type] as $file) {
            $dom = new DOMDocument;
            @$dom->loadHTMLFile($file);
            $tags = $dom->getElementsByTagName('*');
            foreach ($tags as $tag) {
                $data->html[$tag->nodeName]=1;

                //TODO: use $tag->getAttribute("style")
                foreach ($tag->attributes as $att) {
                    if ($att->nodeName === 'style') {
                        $style = $att->nodeValue;
                        if (!empty($style)) {
                            $data->css[$style]=1;
                        }
                    }
                }
            }
        }
        if (!empty($data->css)) {
            var_dump($data->css);
        }
        $this->projects[$p_name]["tags"]["used"]=array_keys($data->html);
        $type = "css";
        foreach($this->tags[$type] as $tag){
            if (empty($project["files"][$type] )){
                continue;
            }

            foreach ($project["files"]["css"] as $file) {
                if (shell_exec("grep -i -h -c -m 1 '$tag' '$file'") != 0){
                    $this->projects[$p_name]["tags"]["used"][]=$tag;
                    break;
                }
            }
        }
        $black = array_intersect($this->tags["black"], $this->projects[$p_name]["tags"]["used"]);
        $this->projects[$p_name]["tags"]["used"] = array_diff($this->projects[$p_name]["tags"]["used"], $black);
        $this->projects[$p_name]["tags"]["black"] = $black;
    }

    function get_tags_usage($min_usage){
        $rstat = array();
        $stat = array();
        foreach($this->projects as $p_name => $p){
            if (empty($p["tags"]["used"])) {
                echo "$p_name pole kasutanud ühtegi tag-i";
                continue;
            }
            foreach($p["tags"]["used"] as $tag){
                if (empty($rstat[$tag])) {
                    $rstat[$tag] = 1;
                } else {
                    $rstat[$tag]+= 1;
                }
            }
        }
        foreach($rstat as $k => $v) {
            $stat[$v][]=$k;
            if ($v >= $min_usage) {
                $this->popular_tags[]=$k;
            }
        }
    }

    function clean_unused_tags(){
        foreach($this->projects as $p_name => $p ){
            $this->projects[$p_name]["tags"]["unused"]=array_diff($this->popular_tags,$p["tags"]["used"]);
        }
    }
}

?>
