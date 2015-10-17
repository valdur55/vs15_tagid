<!doctype html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<?php
define("W3C", "http://www.w3schools.com/cssref/");
define("CACHE", "../cache/css_raw/");
$dom = new DOMDocument;
@$dom->loadHTMLFile("props");
$css= new stdClass();
$dom = $dom->getElementsByTagName('a');
foreach($dom as $line){
    $name= $line->nodeValue;
    if (substr_count($name, "-") > 1) {
        $css->long[]=$name;
        continue;
    }

    $link = $line->getAttribute("href");
    $css->links[$name]=$link;
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

            $depr = 0;

            if ($table->getElementsByTagName("tr")->length > 2) {
                //var_dump($name); // skip tags which have more than one row for versions.
                continue;
            }

            foreach ($table->getElementsByTagName("td") as $col) {
                if ($col->nodeValue === "Not supported" ) {
                    $depr++;
                }
            }

            if ($depr < 3) {
                $css->stat[]=$name;
            }

        }
    }
}

file_put_contents(CACHE."tags", implode("\n", array_values(($css->stat))));

var_dump($css->stat); die();

$rows = $dom->getElementsByTagName('tr');


echo "<pre>";
$data =  new stdClass();
foreach ($rows as $row) {
    $i=0;
    $cols = $row->getElementsByTagName('td');

    foreach ($cols as $col) {

        if ($i++ === 0 ) {
            $name=$col->nodeValue;
            $data->html[$name]=0;
            continue;
        }

        if (!empty($col->nodeValue)) {
            $data->html[$name]+=1;
        }
    }
}
//$data->html = array_keys($data->html);
foreach ($data->html as $key=> $val) {
    $data->good[$val][]=$key;
}
ksort($data->good);
var_dump($data->good);
echo "</pre>";
?>
</body>
</html>

