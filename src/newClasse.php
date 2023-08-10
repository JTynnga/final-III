<?php
session_start();
require("connection.php");

$newClaseNombre = $_POST["newClaseNombre"];
$profeClaseAsign = $_POST["profeClaseAsign"];


$insertNewClase = $mysqli->query("INSERT INTO classes (name_class) VALUES ('$newClaseNombre')");

$iselectNewClase = $mysqli->query("SELECT * FROM classes WHERE name_class = '$newClaseNombre'");
$newClaseRow = $iselectNewClase->fetch_assoc();

$asignClasse = $newClaseRow["id_class"];

if (isset($profeClaseAsign)) {
    $updateNewInfo = $mysqli->query("UPDATE info SET teacher_class = '$asignClasse'  WHERE id_info = '$profeClaseAsign'");
}
header("Location:./menu0.php");
die();
