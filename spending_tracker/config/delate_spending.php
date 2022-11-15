<?php
require_once('config.php');
$id = $_GET['id'];

$query = "DELETE FROM dinero WHERE id = '$id'";


$conexion->query($query);
header("location:../index.php");
?>