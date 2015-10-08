<?php

define ("DEV", true);
define ("VERBOSE", true);
define ("UPDATE_GIT", false);
$drive_url= "https://docs.google.com/spreadsheets/d/".
        "1j44KDS8Y_fuRkz7-9jjvjp1FQamFJPIgpGTpZFFN5UQ/".
        "pub?output=csv";
//print_r("wget '$drive_url'");

require 'Worker.php';
require 'Deploy.php';

$worker = new Worker($drive_url);
$projects = $worker->get_projects();
$errors = array();
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
                <?php
                if (empty($p["name"]) ) {
                    $errors["noname"][]=$p;
                    continue;
                }
                    if (empty($p["tags"])) {
                        $errors["notags"][]=$p;
                        continue;
                    }
                ?>
                <td><a href="<?= $p["p_dir"] ?>"><?= $p["name"] ?></a></td>
                <td><?= !empty($p['tags']["used"]) ? count($p["tags"]["used"]) : 0  ?></td>
                <td><?= count($p['tags']["unused"]) ?></td>
                <td><?= htmlspecialchars(implode("," ,  $p['tags']["unused"])) ?></td>
        </tr>

        <? endforeach ?>
    </table>
    <h2>Pole css/html/php faile</h2>
    <ul>
    <? foreach($errors["notags"] as $p) : ?>
        <li><?= $p["name"] ?></li>
    <? endforeach ?>
    </ul>
    <h2>Pole nime</h2>
    <ul>
    <? foreach($errors["noname"] as $p) : ?>
        <li><?= var_dump($p) ?></li>
    <? endforeach ?>
    </ul>
</body>
</html>
