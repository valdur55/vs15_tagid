<!doctype html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<?php

$dom = new DOMDocument;
$load = $dom->loadHTMLFile("repo/mmrtn/index.html");
$tags = $dom->getElementsByTagName('*');
echo "<pre>";
$data =  new stdClass();
foreach ($tags as $tag) {
    $data->html[$tag->nodeName]=1;
    print_r($tag);
    foreach ($tag->attributes as $att) {
        if ($att->nodeName === 'style') {
            $style = $att->nodeValue;
            if (!empty($style)) {
                $css_atts = preg_split( "/;|:/", $style );
                $css_atts = array_map('trim', $css_atts);
                var_dump($css_atts);
            }
        }
    }
}
//$data->html = array_keys($data->html);
print_r($data);
echo "</pre>";
?>
</body>
</html>

?>
