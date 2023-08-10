<?php
session_start();
require("connection.php");
$idnombreCali = $_POST["idnombreCali"];
$editCalificacion = $_POST["editCalificacion"];
$idnombreClassCali = $_POST["idnombreClassCali"];

$insertCalification4Alum = $mysqli->query("UPDATE info_classes SET grade = '$editCalificacion'  WHERE id_info_fk = '$idnombreCali' AND id_class_fk = '$idnombreClassCali'");

header("Location:./menu0.php");
die();
