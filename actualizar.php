<?php
	require_once("sesion.class.php");
	
	$sesion = new sesion();
	$usuario = $sesion->get("usuario");
	
	if( $usuario == false )
	{	
		header("Location: login.php");		
	}
	else 
	{
?>
<?php
require('functions.php');
if(isset($_POST['submit'])){
	require('clases/cliente.class.php');
	$objCliente=new Cliente;
	
	$cliente_id = htmlspecialchars(trim($_POST['cliente_id']));
	$nombres = htmlspecialchars(trim($_POST['nombres']));
    $tipo_doc = htmlspecialchars(trim($_POST['tipo_doc']));
	$documento = htmlspecialchars(trim($_POST['documento']));
	$ciudad = htmlspecialchars(trim($_POST['ciudad']));
	$sexo = htmlspecialchars(trim($_POST['alternativas']));
	$telefono = htmlspecialchars(trim($_POST['telefono']));
	$celular = htmlspecialchars(trim($_POST['celular']));
	$correo = htmlspecialchars(trim($_POST['correo']));
	$oficio = htmlspecialchars(trim($_POST['oficio']));
	$empresa = htmlspecialchars(trim($_POST['empresa']));
	$fecha_nacimiento = htmlspecialchars(trim($_POST['fecha_nacimiento']));
	$edad = htmlspecialchars(trim($_POST['edad']));
	$seguro = htmlspecialchars(trim($_POST['seguro']));
	$observaciones = htmlspecialchars(trim($_POST['observaciones']));
	$fecha_registro = htmlspecialchars(trim($_POST['fecha_registro']));
	
	if ( $objCliente->actualizar(array($nombres,$tipo_doc,$documento,$ciudad,$sexo,$telefono,$celular,$correo,$oficio,$empresa,$fecha_nacimiento,$edad,$seguro,$observaciones,$fecha_registro),$cliente_id) == true){
		echo 'Datos guardados';
	//Archivo Log
    //ponemos tipo 'a' para añadir lineas sin borrar
    $file=fopen("log.txt","a") or die("Problemas");
    //vamos añadiendo el contenido
    fputs($file,"Actualizó datos del Paciente");
    fputs($file,",");
    fputs($file,date("d/m/Y H:i:s",time()-3600));
	fputs($file,",");
	fputs($file,"ID del paciente: ");
	fputs($file,"$cliente_id");
    fputs($file,",");
	fputs($file,"Documento: ");
    fputs($file,"$documento");
	fputs($file,",");
    fputs($file,"$usuario");
	fputs($file,",");
	fputs($file,"{$_SERVER['REMOTE_ADDR']}");
	fputs($file,"\r\n");
    fclose($file);
	}else{
		echo 'Se produjo un error. Intente nuevamente';
	} 
}else{
	if(isset($_GET['id'])){
		
		require('clases/cliente.class.php');
		$objCliente=new Cliente;
		$consulta = $objCliente->mostrar_cliente($_GET['id']);
		$cliente = mysql_fetch_array($consulta);
	?>
	<!-- functions onsubmit en el archivo jquery functions -->
	<form class="form-inline" role="form" id="frmClienteActualizar" name="frmClienteActualizar" method="post" action="actualizar.php" onsubmit="ActualizarDatos(); return false">
      <img src="img/icono_editar.png" title="Editar Paciente" alt="Editar Paciente" />
	  <img width="120px" height="140px" src="uploads/<?php echo $cliente['id'] ?>" title="Foto Paciente" alt="Foto Paciente" />
	  <center>
	  <div class="form-group">
	  <fieldset>
      <legend>ACTUALIZAR PACIENTE</legend>
	  <input type="hidden" name="cliente_id" id="cliente_id" value="<?php echo $cliente['id']?>" />
      <input type="hidden" name="observaciones" id="observaciones" value="<?php echo $cliente['observaciones']?>" />
	  <input type="hidden" name="fecha_registro" id="fecha_registro" value="<?php echo $cliente['fecha_registro']?>" />
	  <div class="tab">
	   <a class="btn btn-success" href="#primero">PERSONAL</a><a class="btn btn-info" href="#segundo">CONTACTO</a><a class="btn btn-danger" href="#tercero">SEGURO</a><div class="clear"></div>
      </div>
      <div class="contenedor">
      <div id="primero">
	  <label>Nombres<br />
	  <input size="45" class="form-control" type="text" name="nombres" id="nombres" value="<?php echo $cliente['nombres']?>" />
	  </label>
	  <label>Tipo Documento<br />
        <select class="form-control" type="text" name="tipo_doc" id="tipo_doc" value="<?php echo $cliente['tipo_doc']?>">
         <option value="CC">Cédula</option>
		 <option value="TI">Tarjeta de Identidad</option>
		 <option value="NUI">Num único identificación</option>
		</select>
   </label>
  <label>Documento<br />
  <input size="20" class="form-control" type="text" name="documento" id="documento" value="<?php echo $cliente['documento']?>"/>
  </label>
		<label>Ciudad<br />
		<input size="30" class="form-control" type="text" name="ciudad" id="ciudad" value="<?php echo $cliente['ciudad']?>" />
		</label>
		<label>Sexo<br />
		<input class="form-control" type="radio" name="alternativas" id="masculino" value="M" <?php if($cliente['sexo']=="M") echo "checked=\"checked\""?> />
		Masculino
		<input class="form-control" type="radio" name="alternativas" id="femenino" value="F" <?php if($cliente['sexo']=="F") echo "checked=\"checked\""?> />
		Femenino</label>
    <label>Fecha Nacimiento<br />
    <input class="form-control" type="text" name="fecha_nacimiento" id="fecha_nacimiento" value="<?php echo date("d/m/Y",strtotime($cliente['fecha_nacimiento']));?>" />
    </label>
    <label>Edad<br />
    <input class="form-control" type="text" name="edad" id="edad" value="<?php echo $cliente['edad']?>">
	</label>
	</div><!-- FIN DIV TAB 1 -->
    <div id="segundo">
	<label>Telefono<br />
	<input class="form-control" type="tel" name="telefono" id="telefono" value="<?php echo $cliente['telefono']?>" />
	</label>
    <label>Celular<br />
    <input class="form-control" type="tel" name="celular" id="celular" value="<?php echo $cliente['celular']?>" />
    </label>
    <label>Correo<br />
    <input size="45" class="form-control" type="email" name="correo" id="correo" value="<?php echo $cliente['correo']?>" />
    </label>
    <label>Oficio<br />
    <input class="form-control" type="text" name="oficio" id="oficio" value="<?php echo $cliente['oficio']?>" />
    </label>
    <label>Empresa<br />
    <input class="form-control" type="text" name="empresa" id="empresa" value="<?php echo $cliente['empresa']?>" />
    </label>
	</div><!-- FIN DIV TAB 2 -->
	<div id="tercero">
      <label>Seguro EPS<br />
       <input class="form-control" type="text" name="seguro" id="seguro" value="<?php echo $cliente['seguro']?>" />
      </label>
      <label>fecha de registro<br />
       <input class="form-control" type="text" name="fecha_registro" id="fecha_registro" value="<?php echo date("d/m/Y",strtotime($cliente['fecha_registro']));?>" readonly>
      </label>
     </div><!-- FIN DIV TAB 3 -->
	  </fieldset>
	  <p>
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
	  print '<p align="center">';
	  print '<input class="btn btn-primary" type="submit" name="submit" id="button" value="Guardar" />';
	  print '<label></label> ';
	  print '<input class="btn btn-default" type="button" name="cancelar" id="cancelar" value="Cancelar" onclick="Cancelar()" />';
	  print '</p>';
	 }
	 else{
	  print '<p align="center">';
	  print '<label></label>';
	  print '<input class="btn btn-default" type="button" name="cancelar" id="cancelar" value="Cerrar" onclick="Cancelar()" />';
	  print '</p>';
	 }
	 }
	 ?>
	  </p>
	  <script language="javascript">
<!--
            $(function (activar_pestanya) {
   				var tabContainerssup = $('div.contenedor > div');
    
			    $('div.tab a').click(function () {
		        	tabContainerssup.hide().filter(this.hash).show();
        
		        	return false;
			    }).filter(':first').click();
			});
//-->
</script>
</div>
	  </div>
	</form>
	</center>
	<?php
	}
}
?>
	<?php 
	}	
?>