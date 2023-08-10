<?php
session_start();
require("connection.php");
$idDelAlumno = $_POST["idDelAlumno"];
$editAlumnoDNI = $_POST["editAlumnoDNI"];
$editAlumnoEmail = $_POST["editAlumnoEmail"];
$editAlumnoNombre = $_POST["editAlumnoNombre"];
$editAlumnoApellido = $_POST["editAlumnoApellido"];
$editAlumnoDirec = $_POST["editAlumnoDirec"];
$editAlumnoFecha = $_POST["editAlumnoFecha"];
$insertInfoAlumnos = $mysqli->query("UPDATE info SET DNI = '$editAlumnoDNI' ,email = '$editAlumnoEmail',name = '$editAlumnoNombre',lastname = '$editAlumnoApellido',address ='$editAlumnoDirec',birthday = '$editAlumnoFecha' WHERE id_info = '$idDelAlumno'");
header("Location:./menu0.php");
die();
