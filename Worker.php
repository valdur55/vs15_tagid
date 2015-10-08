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
    function Worker($csv_link) {
        $this->set_projects($csv_link);
        $this->deploy();
        $this->analyze();
        //$this->statistic();
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
        //var_dump($this->projects);
        var_dump($this->url_error);

    }

    function deploy(){
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
        //var_dump($deploy->last_commit);
        //$this->projects[$project["user"]]["last_commit"]=$deploy->last_commit;
        }
    }

    private function get_file_list(){
        $raw = explode("\n", shell_exec('find repo -name "*.css" -o -name "*.html" -o -name "*.php"' ));
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
        $line = fgets($f);
        $separator = ($type == "html") ? "><" : "," ;
        $tags=explode($separator, $line);
        $this->tags= array_merge($this->tags, $tags);
    }

    function analyze() {
        $this->get_file_list();
        foreach ($this->types as $type) {
            $this->get_tags($type);
        }
        $this->analyze_tags();

    }


    function analyze_tags(){
        foreach($this->projects as $project){
            if (empty($project["files"])){

                //$this->projects[$project["user"]]["tags"]["unused"]=
                //    $this->tags;
                continue;
            }
            //$files="'".implode("' '", $project["files"])."'";
            foreach($this->tags as $tag){
                $r="unused";
                foreach ($project["files"] as $file) {
                    if (shell_exec("grep -h -c -m 1 '$tag' '$file'") != 0){
                        $r="used";
                        break;
                    }
                }
                $this->projects[$project["user"]]["tags"][$r][]=$tag;
            }
        }
    }

    function statistic(){
        foreach($this->projects as $p){
            foreach($p[tags]["used"] as $tag){
                $tc=$this->stat[$tag];
                $this->stat[$tag]= (empty($tc)) ? 0 : $tc+1;
            }
        }
        var_dump($this->stat);
    }
}

?>

