<?php
session_start();
require("connection.php");
$idDelUser = $_POST["idDelUser"];
$editUserEmail = $_POST["editUserEmail"];
$editUserPassw = $_POST["editUserPassw"];
$editUserNombre = $_POST["editUserNombre"];
$editUserApellido = $_POST["editUserApellido"];
$editUserDirec = $_POST["editUserDirec"];
$editUserFecha = $_POST["editUserFecha"];

$insertInfoMaestros = $mysqli->query("UPDATE info SET email = '$editUserEmail',name = '$editUserNombre',lastname = '$editUserApellido',address ='$editUserDirec',birthday = '$editUserFecha', password = '$editUsePassw' WHERE id_info = '$idDelUser'");

header("Location:./menu0.php");
die();
