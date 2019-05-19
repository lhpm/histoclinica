<!-- BUSCADOR ORDENADOR POR CAMPO Y PAGINADOR DE TABLA -->
<link type="text/css" href="css/demo_table.css" rel="stylesheet" />
<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="js/paginacionlhpm.js"></script>
<!-- FIN BUSCADOR ORDENADOR POR CAMPO Y PAGINADOR DE TABLA -->
<script type="text/javascript">
$(document).ready(function(){
	// mostrar formulario de actualizar datos
	$("table tr .modi_cita a").click(function(){
		$('#tabla').hide();
		$("#formulario").show();
		$.ajax({
			url: this.href,
			type: "GET",
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
});
</script>
<?php
		require('clases/cliente.class.php');
		$objCliente=new Cliente;
		$consulta = $objCliente->mostrar_cliente($_GET['id'],$_GET['id_cita']);
		$cliente = mysql_fetch_array($consulta);
	?>
		<?php //TOTAL CONSULTAS POR PACIENTE
        $resultados = mysql_query("SELECT * FROM cliente WHERE id_cita=".$cliente['id']);
        $total_citas = mysql_num_rows($resultados); ?>
	<form id="frmClienteHistoria" name="frmClienteHistoria" method="post" action="vercita.php" onsubmit="HistoriaDatos(); return false">
	 <img src="img/icono_vercita.jpg" title="Ver Cita" alt="Ver Cita" />
     <img width="120px" height="140px" src="uploads/<?php echo $cliente['id'] ?>" title="Foto Paciente" alt="Foto Paciente" />
	 <?php 
	  echo "Total Citas:";
	  echo $total_citas; ?>
	 <center>
     <div class="form-group">
	  <fieldset>
       <legend>CITAS PROGRAMADAS</legend>
		<input type="hidden" name="cliente_id" id="cliente_id" value="<?php echo $cliente['id'] ?>" />
        <p>
	  <label>Paciente<br />
	  <input size="45" class="form-control" type="text" name="nombres" id="nombres" value="<?php echo $cliente['nombres']?>" / readonly>
	  <input class="form-control" type="text" name="tipo_doc" id="tipo_doc" value="<?php echo $cliente['tipo_doc']?>" / readonly>
	  <input class="form-control" type="text" name="documento" id="documento" value="<?php echo $cliente['documento']?>" / readonly>
	  </label>
      </p>
	  </fieldset>
	</div>
	</form>
	</center>
<?php
//require('clases/cliente.class.php');
$objCliente=new Cliente;
$consulta=$objCliente->vercita($_GET['id'],$_GET['id_cita']);
//PRUEBA DE TRANSFERIR EL VALOR DE LA VARIABLE POR GET desde el archivo consulta.php y la función
//verhistoria en cliente.class.php
//echo $_GET['id'];
//echo $_GET['id_h'];
?>
<table class="display" id="paginacionlhpm">
	  <thead>
   		<tr>
		    <th>ID</th>
			<th>ID_CITA</th>
			<th>CODIGO</th>
			<th>MOTIVO CITA</th>
			<th>FECHA CITA</th>
			<th>HORA CITA</th>
			<th>Observación</th>
			<th>ASISTENCIA</th>
			<th>E</th>
			<th>X</th>
        </tr>
	  </thead>
	  <tbody>
<?php
if($consulta) {
	while( $cliente = mysql_fetch_array($consulta) ){
	?>
		  <tr id="fila-<?php echo $cliente['id'] ?>">
		      <td><?php echo $cliente['id'] ?></td>
			  <td><?php echo $cliente['id_cita'] ?></td>
			  <td><?php echo $cliente['cod_cita'] ?></td>
			  <td><?php echo $cliente['motivo_cita'] ?></td>
			  <td><?php echo date("d-m-Y",strtotime($cliente['fecha_cita']));?></td>
			  <td><?php echo date("h:m:s:a",strtotime($cliente['hora_cita']));?></td>
			  <td><?php echo $cliente['obs_cita'] ?></td>
			  <td><?php echo $cliente['asistio_cita'] ?></td>
			  <td><span class="modi_cita"><a href="actualizar_cita.php?id=<?php echo $cliente['id'] ?>"><img src="img/editar2.png" title="Editar Cita" alt="Editar Cita" /></a></span></td>
			  <!-- Declaración class e id arriba <head> en el archivo JQUERY -->
			  <td align="center"><span class="dele"><a onClick="EliminarDato(<?php echo $cliente['id'] ?>); return false" href="eliminar.php?id=<?php echo $cliente['id'] ?>"><img src="img/eliminar.png" title="Eliminar" alt="Eliminar" /></a></span></td>
		  </tr>
	<?php
	}
}
?>
     </tbody>
    </table>
