<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- BUSCADOR ORDENADOR POR CAMPO Y PAGINADOR DE TABLA -->
<link type="text/css" rel="stylesheet" href="css/demo_table.css" />
<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="js/paginacionlhpm.js"></script>
<!-- FIN BUSCADOR ORDENADOR POR CAMPO Y PAGINADOR DE TABLA -->
<!-- CSS de Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<?php
require('clases/cliente.class.php');
$objCliente=new Cliente;
$consulta=$objCliente->verconsultas();
?>
<span class="verconsultas"><img src="img/lupa_icono_consultas.png" title="Ver Consultas" alt="Ver Consultas" /></span>
	<table class="display" id="paginacionlhpm">
	  <thead>
   		<tr>
		    <th>ID</th>
			<th>ID_H</th>
			<th>Documento</th>
   			<th>Nombres</th>
    		<th>Código</th>
            <th>Motivo Consulta</th>
			<th>Diagnóstico</th>
			<th>Fecha Consulta</th>
			<th>Total Consultas</th>
			<th>X</th>
        </tr>
	  </thead>
	  <tbody>
<?php
	if($consulta) {
	while( $cliente = mysql_fetch_array($consulta) ){
	$resultados = mysql_query("SELECT id FROM cliente WHERE id_h=".$cliente['id_h']);
    $total_consultas = mysql_num_rows($resultados);
	?>
		  <tr id="fila-<?php echo $cliente['id'] ?>">
		      <td><?php echo $cliente['id'] ?></td>
			  <td><?php echo $cliente['id_h'] ?></td>
			  <td><?php echo $cliente['documento_consulta'] ?></td>
			  <td><?php echo $cliente['nombres_consulta'] ?></td>
			  <td><?php echo $cliente['cod_consulta'] ?></td>
			  <td><?php echo $cliente['motivo_consultah'] ?></td>
			  <td><?php echo $cliente['diagnostico'] ?></td>
			  <td><?php echo date("d/m/Y, h:m:s:a",strtotime($cliente['fecha_consulta']));?></td>
			  <td><?php echo $total_consultas ?></td>
			   <?php //Metallica
	            require_once("sesion.class.php");
	            // Coloco el arroba en sesion por una advertencia
	            @$sesion = new sesion();
	            $usuario = $sesion->get("usuario");
	            if( $usuario == false )
	            {
	             header("Location: login.php");	
	            }
	            else
	            {
	            if( $usuario == 'admin' ){
	            ?><td><span class="dele"><a onClick="EliminarDato(<?php echo $cliente['id'] ?>); return false" href="eliminar.php?id=<?php echo $cliente['id'] ?>"><img src="img/eliminar.png" title="Eliminar" alt="Eliminar" /></a></span></td>
                <?php
				}
	            else{
	            ?><td><span class="dele"><img src="img/eliminar.png" title="Eliminar" alt="Eliminar" /></span></td>
		  	    <?php
				}
	            }
	            ?>
		  </tr>
	<?php
	}
}
?>
     </tbody>
    </table>