<!-- BUSCADOR ORDENADOR POR CAMPO Y PAGINADOR DE TABLA -->
<link type="text/css" rel="stylesheet" href="css/demo_table.css" />
<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" src="js/paginacionlhpm.js"></script>
<!-- FIN BUSCADOR ORDENADOR POR CAMPO Y PAGINADOR DE TABLA -->
<?php
require('clases/cliente.class.php');
$objCliente=new Cliente;
$consulta=$objCliente->mostrar_clientes();
?>
<script type="text/javascript">
$(document).ready(function(){
	// Insertar Foto
	$("#foto a").click(function(){
		$("#formulario").show();
		$("#tabla").hide();
		$.ajax({
			type: "GET",
			url: this.href,
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
	
	// mostrar formulario de actualizar datos
	$("table tr .modi a").click(function(){
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

	// mostrar formulario de actualizar historia clinica
	$("table tr .histo a").click(function(){
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
	
	// mostrar formulario de ver historia clinica
	$("table tr .verhisto a").click(function(){
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
	
    // mostrar formulario de ver cita
	$("table tr .vercita a").click(function(){
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
	
	// llamar a formulario ver consultas
	$("#verconsultas a").click(function(){
		$("#formulario").show();
		$("#tabla").hide();
		$.ajax({
			type: "GET",
			url: 'verconsultas.php',
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
	
		// llamar a formulario ver consultas
	$("#vercitas a").click(function(){
		$("#formulario").show();
		$("#tabla").hide();
		$.ajax({
			type: "GET",
			url: 'vercitas.php',
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
	
	// llamar a formulario nuevo
	$("#nuevo a").click(function(){
		$("#formulario").show();
		$("#tabla").hide();
		$.ajax({
			type: "GET",
			url: 'nuevo.php',
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
	
    // llamar procesamiento de backup
	$("#backup a").click(function(){
		$("#formulario").show();
		$("#tabla").hide();
		$.ajax({
			type: "GET",
			url: 'backup.php',
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
	
	// llamar procesamiento de log
	$("#log a").click(function(){
		$("#formulario").show();
		$("#tabla").hide();
		$.ajax({
			type: "GET",
			url: 'log.php',
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
	
    // Insertar Historia Clínica especificamente consultas
	$("#inhisto a").click(function(){
		$("#formulario").show();
		$("#tabla").hide();
		$.ajax({
			type: "GET",
			url: this.href,
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
	
	// Insertar Cita
	$("#incita a").click(function(){
		$("#formulario").show();
		$("#tabla").hide();
		$.ajax({
			type: "GET",
			url: this.href,
			success: function(datos){
				$("#formulario").html(datos);
			}
		});
		return false;
	});
});

</script>
	<table class="display" id="paginacionlhpm">
	  <thead>
   		<tr>
		    <th>ID</th>
			<th>Documento</th>
   			<th>Nombres</th>
    		<th>Sexo</th>
            <th>Fecha Nacimiento</th>
			<th>Fecha Registro</th>
            <!-- <th>E</th> -->
            <th><a class="lhpmtip" title="Cada ícono representa las opciones que desea realizar para el paciente Abrir Historia, Insertar Consulta, Visualizar Historia, Insertar y Ver Citas. Ubique el mouse sobre cada ícono para saber que hacer." href="#">OPERACIONES</a></th>
        </tr>
	  </thead>
	  <tbody>
<?php
if($consulta) {
	while( $cliente = mysql_fetch_array($consulta) ){
	?>
		  <tr id="fila-<?php echo $cliente['id'] ?>">
		      <td><?php echo $cliente['id'] ?></td>
			  <td><?php echo $cliente['documento'] ?></td>

			  <?php //Metallica
	            require_once("sesion.class.php");
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
			  <td>
			  <span class="modi"><a class="lhpmtip" title="Haz click para modificar los datos personales, contacto y seguro. Afiliado a: <?php echo $cliente['seguro'] ?>" href="actualizar.php?id=<?php echo $cliente['id'] ?>"><b><?php echo $cliente['nombres'] ?></b></a></span></td>
			  <?php
				}
	            else{
	            ?>
			  <td><span class="modi"><?php echo $cliente['nombres'] ?></span></td>
			  <?php
				}
	            }
	          ?>
			  <td><?php echo $cliente['sexo'] ?></td>
			  <td><?php echo date("d/m/Y",strtotime($cliente['fecha_nacimiento']));?></td>
			  <td><?php echo date("d/m/Y,h:m:s:a",strtotime($cliente['fecha_registro']));?></td>
			  <!-- Declaración class e id arriba <head> en el archivo JQUERY -->
			  <!-- <td align="center"><span class="modi"><a href="actualizar.php?id=<?php echo $cliente['id'] ?>"><img src="img/editar2.png" title="Editar Paciente" alt="Editar Paciente" /></a></span></td>-->
			  <td align="left">
			  <div class="btn-toolbar" role="toolbar">
			  <span class="histo"><a title="Abrir Historia Clínica" href="historia.php?id=<?php echo $cliente['id'] ?>">
			   <button type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-folder-open"></span>
               </button>
			  </a></span>
			  <span id="inhisto"><a title="Realizar Consulta Médica" href="insertarhistoria.php?id=<?php echo $cliente['id'] ?>&documento_consulta=<?php echo $cliente['documento'] ?>&nombres_consulta=<?php echo $cliente['nombres'] ?>">
			   <button type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-open"></span>
               </button>
			  </a></span>
			  <span class="verhisto"><a title="Ver Historia Clínica y Consultas Realizadas" href="verhistoria.php?id=<?php echo $cliente['id'] ?>&id_h=<?php echo $cliente['id_h'] ?>">
			   <button type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-search"></span>
               </button>
			  </a></span>
			  <span id="incita"><a title="Insertar Cita" href="insertarcita.php?id=<?php echo $cliente['id'] ?>&documento_cita=<?php echo $cliente['documento'] ?>&nombres_cita=<?php echo $cliente['nombres'] ?>">
			   <button type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-time"></span>
               </button>
			  </a></span>
			  <span class="vercita"><a title="Ver Cita" href="vercita.php?id=<?php echo $cliente['id'] ?>&id_cita=<?php echo $cliente['id_cita'] ?>">
			   <button type="button" class="btn btn-default">
               <span class="glyphicon glyphicon-th-list"></span>
               </button>
			  </a></span>
			  </div>
			  </td>
			  <?php //Metallica
	            //require_once("sesion.class.php");
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
	            ?><td align="center"><span class="dele"><a class="lhpmtip" title="Eliminar Paciente" onClick="EliminarDato(<?php echo $cliente['id'] ?>); return false" href="eliminar.php?id=<?php echo $cliente['id'] ?>&documento=<?php echo $cliente['documento'] ?>">
				<img src="img/eliminar.png" title="Eliminar" alt="Eliminar" />
				</a></span></td>
	            <?php
				}
	            else{
	            ?><td align="center"><span class="dele">
				<img src="img/eliminar.png" title="Eliminar" alt="Eliminar" />
				</span></td>
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