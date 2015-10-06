<?php

ob_start(); //output burrering
define ("DEV", true);
require 'Worker.php';

$worker = new Worker("https://docs.google.com/spreadsheets/d/".
        "1j44KDS8Y_fuRkz7-9jjvjp1FQamFJPIgpGTpZFFN5UQ/".
        "pub?output=csv");
