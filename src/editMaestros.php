<?php
session_start();
require("connection.php");
$idDelMaestro = $_POST["idDelMaestro"];
$editMaestroEmail = $_POST["editMaestroEmail"];
$editMaestroNombre = $_POST["editMaestroNombre"];
$editMaestroApellido = $_POST["editMaestroApellido"];
$editMaestroDirec = $_POST["editMaestroDirec"];
$editMaestroFecha = $_POST["editMaestroFecha"];
$editClaseAsign = $_POST["editClaseAsign"];

$insertInfoMaestros = $mysqli->query("UPDATE info SET email = '$editMaestroEmail',name = '$editMaestroNombre',lastname = '$editMaestroApellido',address ='$editMaestroDirec',birthday = '$editMaestroFecha', teacher_class = '$editClaseAsign' WHERE id_info = '$idDelMaestro'");

header("Location:./menu0.php");
die();
