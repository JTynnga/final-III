<?php
session_start();
require("connection.php");
$idDelInfo4Classe = $_POST["idDelInfo4Classe"];

$idDelClasse = $_POST["idDelClasse"];
$editClaseNombre = $_POST["editClaseNombre"];
$editProfeClaseAsign = $_POST["editProfeClaseAsign"];
$insertInfoMaestros01 = $mysqli->query("UPDATE classes SET name_class = '$editClaseNombre' WHERE id_class = '$idDelClasse'");
$insertInfoMaestros02 = $mysqli->query("UPDATE info SET teacher_class = NULL WHERE id_info = '$idDelInfo4Classe'");
$insertInfoMaestros03 = $mysqli->query("UPDATE info SET teacher_class = '$idDelClasse' WHERE id_info = '$editProfeClaseAsign'");
header("Location:./menu0.php");
die();
