<pre>
<?php

require 'Deploy.php';
define ("NAME", 0);

class Worker {
    var $projects = array();
    var $spreadsheet_url="";
    var $repo_col = Array(2,5,8);
    var $url_error = Array();
    var $cfg = Array(
        "p_root" => "/home/KHK/valdur.kana/public/vs15/koik_tagid/repo",
    );
    function Worker($csv_link) {
        $this->set_projects($csv_link);
        $this->deploy();
        print_r($this->projects);
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
                        $this->projects[$name]["git"] = $col;
                        $this->projects[$name]["user"] = $user[3];
                        $this->projects[$name]["p_dir"] = $this->cfg["p_root"]."/".$user[3];
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
        //print_r($this->url_error); 
    }

    function deploy(){
        foreach ($this->projects as &$project) {
        // Start output buffering (capturing)
        //ob_start();

        //print_r($project);
        $project_root = $this->cfg["p_root"];
        $project_name = $project["user"];
        $db_host = '';
        $db_pass = '';
        $git_url = $project["git"];
        $admin_email = 'www-data@ikt.khk.ee';
        $members = array('valdur.kana@khk.ee');

        $config = new stdClass;
        $config->admin_email = $admin_email;
        $config->changelog_link = "http://ikt.khk.ee/~valdur.kana/vs15/koik_tagid/repo/$project_name";
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
        //print_r($deploy->last_commit);
        //$project["last_commit"]=$deploy->last_commit;
        }
    }




}

?>

