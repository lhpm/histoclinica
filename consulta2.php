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
	
		// llamar a formulario ver citas
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
<?php
require_once("sesion.class.php");
	//Iniciado ya en index.php
	@$sesion = new sesion();
	$usuario = $sesion->get("usuario");
	if( $usuario == false )
	{
		header("Location: login.php");		
	}
	else
	{
	if( $usuario == 'admin' ){
    print '<span id="nuevo"><a href="nuevo.php"><img src="img/agregarpaciente.png" title="Agregar Paciente" alt="Agregar Paciente" /></a></span>';
	}
	else{
    print '<span id="nuevo"><a href="nuevo.php"><img src="img/agregarpaciente.png" title="Agregar Paciente" alt="Agregar Paciente" /></a></span>';	
}
}
?>
<span id="verconsultas"><a href="verconsultas.php" class="btn btn-primary" role="button">Consultas</a></span>
<span id="vercitas"><a href="vercitas.php" class="btn btn-primary" role="button">Citas</a></span>
<?php
if( $usuario == 'admin' ){
print '<span id="backup"><a href="backup.php" class="btn btn-primary" role="button">Backup</a></span>';
}
	else{
}
?>
	<table class="display" id="paginacionlhpm">
	  <thead>
   		<tr>
		    <th>ID</th>
			<th>Documento</th>
			<th>Foto</th>
   			<th>Nombres</th>
    		<th>Sexo</th>
            <th>Fecha Nacimiento</th>
			<th>Fecha Registro</th>
            <!-- <th>E</th> -->
            <th>H</th>
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
			  <td align="center"><span id="foto"><a href="foto.php?id=<?php echo $cliente['id'] ?>"><img width="70px" height="90px" src="uploads/<?php echo $cliente['id'] ?>" title="<?php echo $cliente['nombres'] ?>" alt="Ingresar Foto" /></a></span></td>
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
	            ?>
			  <td><span class="modi"><a href="actualizar.php?id=<?php echo $cliente['id'] ?>"><b><?php echo $cliente['nombres'] ?></b></a></span></td>
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
			  <td><?php echo $cliente['fecha_nacimiento'] ?></td>
			  <td><?php echo $cliente['fecha_registro'] ?></td>
			  <!-- Declaración class e id arriba <head> en el archivo JQUERY -->
			  <!-- <td align="center"><span class="modi"><a href="actualizar.php?id=<?php echo $cliente['id'] ?>"><img src="img/editar2.png" title="Editar Paciente" alt="Editar Paciente" /></a></span></td>-->
			  <td align="left"><span class="histo"><a href="historia.php?id=<?php echo $cliente['id'] ?>"><img src="img/insertarhistoria.png" title="Insertar Historia" alt="Insertar Historia" /></a></span>
			  <span id="inhisto"><a href="insertarhistoria.php?id=<?php echo $cliente['id'] ?>&documento_consulta=<?php echo $cliente['documento'] ?>&nombres_consulta=<?php echo $cliente['nombres'] ?>"><img src="img/consulta.png" title="Insertar Consultas" alt="Insertar Consultas" /></a></span>
			  <span class="verhisto"><a href="verhistoria.php?id=<?php echo $cliente['id'] ?>&id_h=<?php echo $cliente['id_h'] ?>"><img src="img/verhistoria.png" title="Ver Historia" alt="Ver Historia" /></a></span>
			  <span id="incita"><a href="insertarcita.php?id=<?php echo $cliente['id'] ?>&documento_cita=<?php echo $cliente['documento'] ?>&nombres_cita=<?php echo $cliente['nombres'] ?>"><img src="img/cita_icono.png" title="Insertar Cita" alt="Insertar Cita" /></a></span>
			  <span class="vercita"><a href="vercita.php?id=<?php echo $cliente['id'] ?>&id_cita=<?php echo $cliente['id_cita'] ?>"><img src="img/ver_cita_icono.png" title="Ver Cita" alt="Ver Cita" /></a></span></td>
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
	            ?><td align="center"><span class="dele"><a onClick="EliminarDato(<?php echo $cliente['id'] ?>); return false" href="eliminar.php?id=<?php echo $cliente['id'] ?>"><img src="img/eliminar.png" title="Eliminar" alt="Eliminar" /></a></span></td>
	            <?php
				}
	            else{
	            ?><td align="center"><span class="dele"><img src="img/eliminar.png" title="Eliminar" alt="Eliminar" /></span></td>
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