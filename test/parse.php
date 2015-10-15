<!doctype html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<?php

$dom = new DOMDocument;
@$dom->loadHTMLFile("css3_browsersupport.asp");
$dom = $dom->getElementsByTagName('table')->item(0);
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

