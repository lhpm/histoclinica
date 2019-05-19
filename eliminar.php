<?php
//Lo invoque para poder tomar el usuario y grabarlo en el log.txt
	require_once("sesion.class.php");
	$sesion = new sesion();
	$usuario = $sesion->get("usuario");
	
require('clases/cliente.class.php');

$cliente_id=$_GET['id'];
$objCliente=new Cliente;
if( $objCliente->eliminar($cliente_id) == true){
	echo "Registro eliminado correctamente";
	//Archivo Log
    //ponemos tipo 'a' para añadir lineas sin borrar
    $file=fopen("log.txt","a") or die("Problemas");
    //vamos añadiendo el contenido
    fputs($file,"Se eliminò registro con ID = ");
	fputs($file,"$cliente_id");
    fputs($file,",");
	fputs($file,"El DIA: ");
    fputs($file,date("d/m/Y H:i:s",time()-3600));
    fputs($file,",");
	fputs($file,"{$_SERVER['REMOTE_ADDR']}");
	fputs($file,"\r\n");
    fclose($file);
}else{
	echo "Ocurrio un error";
}
?>