<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<?php
require_once("conex.php");
// Seleccionamos el nombre de la base de datos
$conectado->select_db ( $db );
$consulta = $conectado->prepare("select id,frase from luipat7_dg.frases ORDER BY RAND() LIMIT 1");
// Utilizaremos en el futuro de necesitar la consulta variables bind para 
// no tener que ejecutar el plan de ejecución de la consulta anterior cada vez 
// que la invoquemos. ‘s’ significa que el campo “email” es de tipo string.
//$consulta->bind_param('s', $frase);
// Ejecutamos la consulta
$consulta->execute();
// Almacenamos el resultado
$consulta->store_result();
// Obtenemos el número de filas que ha devuelto la consulta
$NumeroRegistros = $consulta->num_rows;
if ( $NumeroRegistros > 0 ) {
for ( $contador=0; $contador<$NumeroRegistros; $contador++ )
{
// Apuntamos a la fila número “contador”
$consulta->data_seek($contador);
// Con bind_result indicamos las variables asociadas a cada columna devuelta por la consulta a la BD
$consulta->bind_result($id, $frase);
// Con fetch, asignamos los valores devueltos por la BD a cada variable definida en bind_result
$consulta->fetch();
// Imprimimos en pantalla el nombre, la edad y el email de 
// Ia fila número “$contador” del resultado de la consulta
echo $id . ' ' . $frase;
}
}
$consulta->close();
$conectado->close();
?>