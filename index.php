<?php
// True korral kasutab kohalikku csv faili, ning jätab repo uuendamata.
$b=true;
define ("DEV", !$b);
define ("VERBOSE", !$b);
$min= (empty($_POST["min"])) ? 10 : $_POST["min"];
define ("MIN_COUNT", $min);
$drive_url= "https://docs.google.com/spreadsheets/d/".
        "1j44KDS8Y_fuRkz7-9jjvjp1FQamFJPIgpGTpZFFN5UQ/".
        "pub?".
        "gid=257327911".
        "&single=true".
        "&output=csv";

$update =  (!empty($_POST["update"])) ? $_POST["update"] : false ;
$force_update = (!empty($_GET["force"])) ? $_GET["force"] : false ;
define ( "UPDATE" , $update );
define ( "FORCE_UPDATE" , $force_update );
require 'Check.php';
require 'Deploy.php';

function ddump($data){
    var_dump($data); die();
}
$worker = new Check($drive_url);
$projects = $worker->get_projects();
$errors = array();
?>


<!DOCTYPE html>
<html lang="et">
<head>
    <meta charset="UTF-8">
    <script type="application/javascript" src="./js/tablesorter.com/jquery-latest.js"></script>
    <script type="application/javascript" src="./js/tablesorter.com/__jquery.tablesorter.js"></script>
    <title>VS15 kõikide tagide projekti kontroll</title>
</head>
<body>
    <form method="post" action="?">
        <label for="min">Minimaalne õpilaste arv:</label>
        <input value="<?= $min ?>" type="number" name="min" min=1 max="<?= count($projects) ?>"><br>
        <input id="update" name="update" type="submit" value="Uuenda"></br>
        <button>Saada</button>
    </form>
    <div>
        Kasutamata tag'ide hulgas kuvatakse tag'e, mida kasutab vähemalt <?= MIN_COUNT ?> õpilast.
    </div>
    <table id="projektid" border="1" >
        <thead>
        <?php $thead = array(
            'Nimi',
            'Kasutatud tagid (arv)',
            'Kasutamata tagid(arv)',
        );
            foreach ($thead as $col): ?>
             <th><a href="#"><?= $col?></a></th>
        <? endforeach ?>
        <th class="{sorter: false}">Kaustamata tagid</th>
        </thead>

        <?php foreach ($projects as $p): ?>
            <tr>
                <td><a href="<?= $p["p_dir"] ?>"><?= $p["name"] ?></a></td>
                <td><?= !empty($p['tags']["used"]) ? count($p["tags"]["used"]) : 0  ?></td>
                <td><?= count($p['tags']["unused"]) ?></td>
                <td><?= htmlspecialchars(implode("," ,  $p['tags']['unused'])) ?></td>
        </tr>

        <? endforeach ?>
    </table>
</body>
<script type="text/javascript">$(document).ready(function()
        {
            $("#projektid").tablesorter();
        }
    );
</script>
</html>
