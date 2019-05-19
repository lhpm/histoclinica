<?php
//Función que nos retornara una conexión con mysqli
//Datos de conexion a la base de datos
$host='localhost'; // Servidor
$user='luipat7_dg'; //Usuario de MySQL
$pass='Sistemas2018'; //Password de MySQL
$db='luipat7_dg'; //Nombre de la Base de Datos

$conectado = mysqli_init();
$conectado->real_connect ($host,$user,$pass,$db);

if (mysqli_connect_errno()) {
 echo("Error de conexión: %sn". mysqli_connect_error()); 
 exit();
} else {
   // La conexión se ha establecido
}
?>