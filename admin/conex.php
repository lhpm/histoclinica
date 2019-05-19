<?php 
function Conectarse() 
{ 
   if (!($link=mysql_connect("localhost","id1050139_lhpm","45)Qh7DBuT$ul@L6s!N*"))) 
   { 
      echo "Error conectando a la base de datos."; 
      exit(); 
   } 
   if (!mysql_select_db("id1050139_lhpmbd",$link)) 
   { 
      echo "Error seleccionando la base de datos."; 
      exit(); 
   } 
   return $link;
} 
$link=Conectarse(); 
$cn=$link; // Para la paginación
//Datos de conexion a la base de datos
$host="localhost"; // Servidor
$user="id1050139_lhpm"; //Usuario de MySQL
$pass="45)Qh7DBuT$ul@L6s!N*"; //Password de MySQL
$db="id1050139_lhpmbd"; //Nombre de la Base de Datos
?>