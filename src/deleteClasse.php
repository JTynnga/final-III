<?php
session_start();
require("connection.php");
$idDelClasseDelete = $_POST["idDelClasseDelete"];
$deleteClasses01 = $mysqli->query("DELETE FROM info_classes WHERE id_class_fk = $idDelClasseDelete");
$deleteClasses02 = $mysqli->query("UPDATE info SET teacher_class = NULL WHERE teacher_class =$idDelClasseDelete");
$deleteClasses03 = $mysqli->query("DELETE FROM classes WHERE id_class = $idDelClasseDelete");
header("Location:./menu0.php");
die();
