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
$consulta=$objCliente->vercitas();
?>
<img src="img/lupa_icono_citas.png" title="Ver Citas" alt="Ver Citas" />
	<table class="display" id="paginacionlhpm">
	  <thead>
   		<tr>
		    <th>ID</th>
			<th>Documento</th>
   			<th>Nombres</th>
            <th>Motivo Cita</th>
			<th>Fecha Cita</th>
			<th>Hora Cita</th>
			<th>Observaciones</th>
			<th>PLAZO</th>
			<th>Asistió</th>
			<th>X</th>
        </tr>
	  </thead>
	  <tbody>
<?php
if($consulta) {
	while( $cliente = mysql_fetch_array($consulta) ){
	
    $fecha_actual = date("Y-m-d",time());
    $fecha_entrada = $cliente['fecha_cita'];
?>
		  <tr id="fila-<?php echo $cliente['id'] ?>">
		      <td><?php echo $cliente['id'] ?></td>
			  <td><?php echo $cliente['documento_cita'] ?></td>
			  <td><?php echo $cliente['nombres_cita'] ?></td>
			  <td><?php echo $cliente['motivo_cita'] ?></td>
			  <td><?php echo date("d/m/Y",strtotime($cliente['fecha_cita']));?></td>
			  <td><?php echo date("h:m:s:a",strtotime($cliente['hora_cita']));?></td>
			  <td><?php echo $cliente['obs_cita'] ?></td>
			  <td><?php 
			  if($fecha_actual > $fecha_entrada){
              echo "VENCIDA";
              }else{
              echo "ACTIVA";
              }?>
              </td>
			  <td><?php echo $cliente['asistio_cita'] ?></td>
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
	            ?>
			    <td><span class="dele"><a onClick="EliminarDato(<?php echo $cliente['id'] ?>); return false" href="eliminar.php?id=<?php echo $cliente['id'] ?>"><img src="img/eliminar.png" title="Eliminar" alt="Eliminar" /></a></span></td>
		        <?php
				}
	            else{
	            ?>
				<td><span class="dele"><img src="img/eliminar.png" title="Eliminar" alt="Eliminar" /></span></td>
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