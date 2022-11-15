<?php
require_once('config.php');
$cantidad = $_POST['cantidad'];
$categoria = $_POST['categoría'];
$descripcion = $_POST['descripcion'];

$query = "INSERT INTO dinero(cantidad ,categoría , descripcion) VALUES ('$cantidad', '$categoria', '$descripcion')";

$conexion->query($query);
header("location:../index.php");
?>