<?php
define("W3C", "http://www.w3schools.com/cssref/");
define("CACHE", "lib/css_raw/");
function get_from_menu_css_tags() {
    $dom = new DOMDocument;
    @$dom->loadHTMLFile("lib/props");
    $css= new stdClass();
    $dom = $dom->getElementsByTagName('a');
    foreach($dom as $line){
        $name= $line->nodeValue;
        $css->all[]=$name;
        if (substr_count($name, "-") > 1) {
            $css->stat["black"][]=$name;
            continue;
        }

        $link = $line->getAttribute("href");
        $support = new DOMDocument();

        if (file_exists(CACHE.$link)) {
            $support->loadHTMLFile(CACHE.$link);
        } else {
            $support->loadHTMLFile(W3C.$link);
            if (!empty($support)) {
                $support->saveHTMLFile(CACHE.$link);
            }
        }

        foreach ($support->getElementsByTagName("table") as $table){
            if ($table->getAttribute("class") == "browserref notranslate") {
                if ($table->getElementsByTagName("tr")->length > 2) {
                    //var_dump($name); // skip tags which have more than one row for versions.
                    continue;
                }

                $depr = substr_count(strtolower($table->nodeValue) , "not supported"); 

                $r =  ($depr < 1) ? "ok" : "black";
                $css->stat[$r][]=$name;
                if ($r == "black") {
                    $css->stat["count"][$depr][]= $name;
                }

            }
        }
    }

    return $css;
}
?>
