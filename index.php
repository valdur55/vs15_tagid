<?php

define ("DEV", false);
define ("VERBOSE", false);
require 'Worker.php';
$drive_url= "https://docs.google.com/spreadsheets/d/".
        "1j44KDS8Y_fuRkz7-9jjvjp1FQamFJPIgpGTpZFFN5UQ/".
        "pub?output=csv";
$worker = new Worker($drive_url);

//shell_exec("wget $drive_url");

?>
