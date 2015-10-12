
<?php

define ("NAME", 0);

class Worker {
    var $projects = array();
    var $spreadsheet_url="";
    var $repo_col = Array(2,5,8);
    var $url_error = Array();
    var $cfg = Array(
        "p_root" => "repo",
    );
    var $tags = array();
    var $types = array("html", "css");
    var $stat = array();
    var $popular_tags = array();
    function Worker($csv_link) {
        $this->get_tags_from_cache("cache/projects");
        $this->set_projects($csv_link);
        foreach ($this->types as $type) {
            $this->get_tags($type);
        }
        //$this->deploy();
        $this->get_tags_usage(MIN_COUNT);
        //var_dump($this->projects);
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
        echo "<pre>";
        //var_dump($this->projects);
            print_r($this->url_error);
        echo "</pre>";

    }


    function deploy(){
        $changes = false;
        foreach ($this->projects as $project) {
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

            if ($deploy->need_update) {
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

    function get_file_list($p_name=''){
        $raw = explode("\n", shell_exec("find $p_name -name '*.css' -o -name '*.html' -o -name '*.php'" ));
        foreach($raw as $file) {
            if (empty($file)) {
                continue;
            }
            $user = explode("/",$file);
            $this->projects[$user[1]]["files"][]=$file;
         }
    }

    private function get_tags($type) {
        $filename = $type."_tags";
        $f = fopen($filename, "r") or die("Can't open ".$filename);
        $line = trim(fgets($f));
        $separator = ($type == "html") ? "><" : "," ;
        $tags=explode($separator, $line);
        $this->tags= array_merge($this->tags, $tags);
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
        if (DEV) {
            $data =  new stdClass();
            foreach ($project["files"] as $file) {
                $dom = new DOMDocument;
                $dom->loadHTMLFile($file);
                $tags = $dom->getElementsByTagName('*');
                foreach ($tags as $tag) {
                    $data->html[$tag->nodeName]=1;
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
            var_dump($data->css);
            $this->projects[$p_name]["tags"]["used"]=array_keys($data->html);
        } else {
            foreach($this->tags as $tag){
                foreach ($project["files"] as $file) {
                    if (shell_exec("grep -h -c -m 1 '$tag' '$file'") != 0){
                        $this->projects[$p_name]["tags"]["used"][]=$tag;
                        break;
                    }
                }
            }
        }
    }

    function get_tags_usage($min_usage){
        $rstat = array();
        $stat = array();
        foreach($this->projects as $p){
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
        //ksort($stat);
        //var_dump($stat);
    }

    function clean_unused_tags(){
        foreach($this->projects as $p_name => $p ){
            $this->projects[$p_name]["tags"]["unused"]=
                array_diff($this->popular_tags,$p["tags"]["used"]);
        }
    }
}

?>
