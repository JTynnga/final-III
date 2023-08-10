<?php
session_start();
require("connection.php");
$inputIdS = $_POST["inputIdS"];
$inputEmailS = $_POST["inputEmailS"];
$permisoSelect = $_POST["permisoSelect"];

if ($_POST["permisoCheckbox"] == 1) {
    $permisoEstado = 1;
} elseif ($_POST["permisoCheckbox"] == NULL) {
    $permisoEstado = 0;
}

$updatePermisos = $mysqli->query("UPDATE info SET email= '$inputEmailS',id_rol = '$permisoSelect',state = '$permisoEstado' WHERE id_info = '$inputIdS'");


header("Location:./menu0.php");
die();
