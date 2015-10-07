<?php

define ("DEV", true);
define ("VERBOSE", false);
require 'Worker.php';
$drive_url= "https://docs.google.com/spreadsheets/d/".
        "1j44KDS8Y_fuRkz7-9jjvjp1FQamFJPIgpGTpZFFN5UQ/".
        "pub?output=csv";
$worker = new Worker($drive_url);
$projects = $worker->get_projects();

//shell_exec("wget $drive_url");
?>


<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <title></title>
</head>
<body>
    <table border="1" >
        <thead>
            <th>Nimi</th>
            <th>Kasutatud tagid (arv)</th>
            <th>Kasutamata tagid (arv)</th>
            <th>Kasutamat tagid</th>
        </thead>

        <?php foreach ($projects as $p): ?>
        <tr>

                <td><?= $p["name"] ?></td>
                <td><?= count($p['tags']["used"]) ?></td>
                <td><?= count($p['tags']["unused"]) ?></td>
                <td><?= htmlspecialchars(implode("," ,  $p['tags']["unused"])) ?></td>
        </tr>

        <? endforeach ?>
    </table>
</body>
</html>
