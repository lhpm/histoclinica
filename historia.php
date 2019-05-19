<?php
date_default_timezone_set('America/Bogota');
//Lo invoque para poder tomar el usuario y grabarlo en el log.txt
	require_once("sesion.class.php");
	$sesion = new sesion();
	$usuario = $sesion->get("usuario");
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
	$seguro = htmlspecialchars(trim($_POST['seguro']));
	$observaciones = htmlspecialchars(trim($_POST['observaciones']));
	$padre = htmlspecialchars(trim($_POST['padre']));
	$madre = htmlspecialchars(trim($_POST['madre']));
	$motivo_consulta = htmlspecialchars(trim($_POST['motivo_consulta']));
	$anamnesis_proxima = htmlspecialchars(trim($_POST['anamnesis_proxima']));
	$ante_morbico = htmlspecialchars(trim($_POST['ante_morbico']));
	$ante_gine = htmlspecialchars(trim($_POST['ante_gine']));
	$ante_medicamentos = htmlspecialchars(trim($_POST['ante_medicamentos']));
	$alergias = htmlspecialchars(trim($_POST['alergias']));
	$ante_personal = htmlspecialchars(trim($_POST['ante_personal']));
	$ante_familiar = htmlspecialchars(trim($_POST['ante_familiar']));
	$inmunizaciones = htmlspecialchars(trim($_POST['inmunizaciones']));
	$fecha_registro = htmlspecialchars(trim($_POST['fecha_registro']));
	
	//Este objeto está en cliente.class.php
	if ( $objCliente->historia(array($nombres,$tipo_doc,$documento,$ciudad,$sexo,$telefono,$celular,$correo,$oficio,$empresa,$fecha_nacimiento,$seguro,$observaciones,$padre,$madre,$motivo_consulta,$anamnesis_proxima,$ante_morbico,$ante_gine,$ante_medicamentos,$alergias,$ante_personal,$ante_familiar,$inmunizaciones,$fecha_registro),$cliente_id) == true){
		echo 'Datos guardados';
		
	//Archivo Log
    //ponemos tipo 'a' para añadir lineas sin borrar
    $file=fopen("log.txt","a") or die("Problemas");
    //vamos añadiendo el contenido
    fputs($file,"Abrir Historia Clínica");
    fputs($file,",");
    fputs($file,date("d/m/Y H:i:s",time()-3600));
	fputs($file,",");
    fputs($file,"Paciente ID: ");
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
	<script language="Javascript">
<!--
function grabar(graba) { 
var inserta=document.formulario.elements["inmunizaciones"]; 
inserta.value=inserta.value+graba+' '; 
document.formulario.inmunizaciones.focus(); 
}
// -->
</script>
	<form class="form-inline" role="form" id="frmClienteHistoria" name="frmClienteHistoria" method="post" action="historia.php" onsubmit="HistoriaDatos(); return false">
    <img src="img/icono_historia.png" title="Historia del Paciente" alt="Historia del Paciente" />
	<img width="120px" height="140px" src="uploads/<?php echo $cliente['id'] ?>" title="Foto Paciente" alt="Foto Paciente" />
	Paciente: <b><?php echo $cliente['nombres']?></b>
	Sexo: <b><?php echo $cliente['sexo']?></b>
	Edad: <b><?php echo $cliente['edad']?></b>
	<center>
	<div class="form-group">
	<fieldset>
    <legend>INGRESAR HISTORIA CLINICA</legend>
	<div class="tab">
	<a class="btn btn-success" href="#primero">PERSONAL</a><a class="btn btn-info" href="#segundo">CONSULTA</a><a class="btn btn-warning" href="#tercero">ANTECEDENTES</a><a class="btn btn-primary" href="#cuarto">SOCIALES</a><a class="btn btn-danger" href="#quinto">GINECOLOGIA</a><div class="clear"></div>
    </div>
    <div class="contenedor">
    <div id="primero">
	<legend>Antecedentes - Personales</legend>
	<input type="hidden" name="cliente_id" id="cliente_id" value="<?php echo $cliente['id'] ?>" />
	  <input class="form-control" type="hidden" name="nombres" id="nombres" value="<?php echo $cliente['nombres']?>" readonly="readonly"/>
	  <input class="text" type="hidden" name="tipo_doc" id="tipo_doc" value="<?php echo $cliente['tipo_doc']?>" />
	  <input class="text" type="hidden" name="documento" id="documento" value="<?php echo $cliente['documento']?>" />
      <input class="text" type="hidden" name="ciudad" id="ciudad" value="<?php echo $cliente['ciudad']?>" />
	  <label>Sexo<br />
		<input class="form-control" type="radio" name="alternativas" id="masculino" value="M" <?php if($cliente['sexo']=="M") echo "checked=\"checked\""?> />
		Masculino
		<input class="form-control" type="radio" name="alternativas" id="femenino" value="F" <?php if($cliente['sexo']=="F") echo "checked=\"checked\""?> />
		Femenino</label>
		<input class="text" type="hidden" name="telefono" id="telefono" value="<?php echo $cliente['telefono']?>" />
		<input class="text" type="hidden" name="celular" id="celular" value="<?php echo $cliente['celular']?>" />
	    <input class="text" type="hidden" name="correo" id="correo" value="<?php echo $cliente['correo']?>" />
		<input class="text" type="hidden" name="oficio" id="oficio" value="<?php echo $cliente['oficio']?>" />
		<input class="text" type="hidden" name="empresa" id="empresa" value="<?php echo $cliente['empresa']?>" />
		<input class="text" type="hidden" name="observaciones" id="observaciones" value="<?php echo $cliente['observaciones']?>" />
        <label>Fecha Nacimiento <a onclick="show_calendar()" style="cursor: pointer;"><small>(calendario)</small></a><br />
        <input readonly="readonly" class="form-control" type="text" name="fecha_nacimiento" id="fecha_nacimiento" value="<?php echo $cliente['fecha_nacimiento'] ?>" />
        <div id="calendario" style="display:none;"><?php calendar_html() ?></div>
        </label>
	  <input class="text" type="hidden" name="seguro" id="seguro" value="<?php echo $cliente['seguro']?>" />
	  <label>PADRE<br />
	  <input class="form-control" type="text" name="padre" id="padre" value="<?php echo $cliente['padre']?>" />
	  </label>
	  <label>MADRE<br />
	  <input class="form-control" type="text" name="madre" id="madre" value="<?php echo $cliente['madre']?>" />
	  </label>
	  </div><!-- FIN DIV TAB 1 -->
	  <div id="segundo">
      <legend>Motivo de la Consulta</legend>
	  <label>Descripción<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="motivo_consulta" id="motivo_consulta">
	  <?php echo $cliente['motivo_consulta']?>
	  </textarea>
	  </label>
      <legend>Anamnesis Próxima</legend>
	  <label>Resumen<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="anamnesis_proxima" id="anamnesis_proxima">
	  <?php echo $cliente['anamnesis_proxima']?>
	  </textarea>
	  </label>
	  </div><!-- FIN DIV TAB 2 -->
	  <div id="tercero">
      <legend>Antecedentes - Anamnesis Remota</legend>
	  <label>Mórbicos<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_morbico" id="ante_morbico">
	  <?php echo $cliente['ante_morbico']?>
	  </textarea>
	  </label>
	  <label>Uso médicamentos<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_medicamentos" id="ante_medicamentos">
	  <?php echo $cliente['ante_medicamentos']?>
	  </textarea>
	  </label>
	  <label>Alergias<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="alergias" id="alergias">
	  <?php echo $cliente['alergias']?>
	  </textarea>
	  </label>
	  <label>Inmunizaciones<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="inmunizaciones" id="inmunizaciones">
	  <?php echo $cliente['inmunizaciones']?>
	  </textarea>
	  </label>
	  </div><!-- FIN DIV TAB 3 -->
	  <div id="cuarto">
	  <legend>Antecedentes - Familiares y Sociales</legend>
	  <label>Familiares<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_familiar" id="ante_familiar">
	  <?php echo $cliente['ante_familiar']?>
	  </textarea>
	  </label>
	  <label>Sociales y personales<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_personal" id="ante_personal">
	  <?php echo $cliente['ante_personal']?>
	  </textarea>
	  </label>
	  </div><!-- FIN DIV TAB 4 -->
	  <div id="quinto">
	  <legend>Antecedentes - Ginecoobstétricos</legend>
	  <label>Ginecoobstétricos<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_gine" id="ante_gine">
	  <?php echo $cliente['ante_gine']?>
	  </textarea>
	  </label>
	  <input class="text" type="hidden" name="fecha_registro" id="fecha_registro" value="<?php echo $cliente['fecha_registro']?>" />	  
	  </div><!-- FIN DIV TAB 5 -->
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
	  </fieldset>
	  </div>
	  </div>
	</form>
	</center>
	<?php
	}
}
?>