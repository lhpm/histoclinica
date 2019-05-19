<?php
include("conex.php");
date_default_timezone_set('America/Bogota');
$data  = explode("-",$_POST['id']);

$campo = $data[0]; // nombre del campo
$id    = $data[1]; // id del registro
$value = $_POST['value']; // valor por el cual reemplazar

$paises = array(
			"1"=>"Argentina",
			"2"=>"Bolivia",
			"3"=>"Peru",
			"4"=>"Chile"
		 );
		 
// sql para actualizar el registro

$query = mysql_query("UPDATE usuario SET ".$campo." = '".$value."' 
							WHERE id = '".$id."'");

echo ($campo == 'id_pais') ? $paises[$value] : $value;
?>