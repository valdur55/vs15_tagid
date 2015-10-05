<pre>
<?php

define ("DEV", true);

class Worker {
    var $projects = array();
    var $spreadsheet_url="";
    var $repo_col = Array(2,5,8);
    var $wrong_repo_url = Array();
    function Worker($csv_link) {
        $this->set_projects($csv_link);
    }

    function set_projects($csv_link) {
        $csv_link= (DEV) ? "pub?output=csv": $csv_link;
        $file = fopen($csv_link, "r") or false;
        if (!$file) {
            return null;
        }

        $noname_count=0;
        while($noname_count != 4 && ! feof($file)) {
            $line = fgetcsv($file);
            if (empty($line[0])) {
                $noname_count++;
                continue;
            }

            $names=explode(", ", $line[0]);
            $c = 2;
            foreach ($names as &$name) {
                if (stristr($line[$c], 'github.com', false) ){
                    $this->projects[$name] = $line[$c];
                } else {
                    $wrong_repo_url[]=Array($name, $line[$c]);
                }
                $c+=3;
            }
            print_r(array($line[0],$line[2], $line[5], $line[8]));
        }

        fclose($file);
        print_r($wrong_repo_url); 
        print_r($this->projects);
    }
}


$tee = new Worker("https://docs.google.com/spreadsheets/d/".
    "1j44KDS8Y_fuRkz7-9jjvjp1FQamFJPIgpGTpZFFN5UQ/".
    "pub?output=csv");


?>

