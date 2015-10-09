<?php
// True korral kasutab kohalikku csv faili, ning jätab repo uuendamata.
$b=true;
define ("DEV", $b);
define ("VERBOSE", $b);
$min= (empty($_POST["min"])) ? 10 : $_POST["min"];
define ("MIN_COUNT", $min);
$drive_url= "https://docs.google.com/spreadsheets/d/".
        "1j44KDS8Y_fuRkz7-9jjvjp1FQamFJPIgpGTpZFFN5UQ/".
        "pub?output=csv";

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
    <form method="post" action="?">
        <label for="min">Minimaalne õpilaste arv:</label>
        <input value="<?= $min ?>" type="number" name="min" min=1 max="<?= count($projects) ?>">
        <button>Saada</button>
    </form>
    <div>
        Kasutamata tag'ide hulgas kuvatakse tag'e, mida kasutab vähemalt <?= MIN_COUNT ?> õpilast.
    </div>
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
</body>
</html>
