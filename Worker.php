<?php

require 'Deploy.php';
define ("NAME", 0);

class Worker {
    var $projects = array();
    var $spreadsheet_url="";
    var $repo_col = Array(2,5,8);
    var $url_error = Array();
    var $cfg = Array(
        "p_root" => "repo",
    );
    function Worker($csv_link) {
        $this->set_projects($csv_link);
        $this->deploy();
        $this->simple_analyze();
        var_dump($this->projects);
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
                    if ($name != "Kadri") {
                        $user= explode("/", $col);
                        $base = $user[3];
                        $this->projects[$base]["name"]=$name;
                        $this->projects[$base]["git"] = $col;
                        $this->projects[$base]["user"] = $user[3];
                        $this->projects[$base]["p_dir"] =
                            $this->cfg["p_root"]."/".$user[3];
                    }
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

    private function get_files($type){
        $files = ($type == "html")
            ? "repo/*/*.php repo/*/*.html" 
            : "repo/*/*.css repo/*/*/*.css repo/*/*/*/*.css";
        $raw = explode("\n ", shell_exec("wc -l ". $files . " | head -n-1"));
        var_dump($raw);
        foreach($raw as $line) {
            $line=explode(" ", trim($line));
            $i = $line[0];
            $file = $line[1];
            $user = explode("/",$file);
            $this->projects[$user[1]]["files"][$type][]=$file;
        }
    }
    function simple_analyze() {
        $this->get_files("html");
        $this->get_files("css");



    }

    function css_analyze(){
        foreach ($projects as $project) {
            $files = shell_exec("awk -F ':' '/:/ {printf $1}' $css_file");
        }
    }

}

?>

