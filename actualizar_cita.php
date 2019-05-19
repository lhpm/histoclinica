<?php
require('functions.php');
	require_once("sesion.class.php");
	$sesion = new sesion();
	$usuario = $sesion->get("usuario");
if(isset($_POST['submit'])){
	require('clases/cliente.class.php');
	$objCliente=new Cliente;
	
	$cliente_id = htmlspecialchars(trim($_POST['cliente_id']));
	$id_cita = htmlspecialchars(trim($_POST['id_cita']));
	$documento_cita = htmlspecialchars(trim($_POST['documento_cita']));
	$nombres_cita = htmlspecialchars(trim($_POST['nombres_cita']));
    $cod_cita = htmlspecialchars(trim($_POST['cod_cita']));
	$motivo_cita = htmlspecialchars(trim($_POST['motivo_cita']));
	$fecha_cita = htmlspecialchars(trim($_POST['fecha_cita']));
	$hora_cita = htmlspecialchars(trim($_POST['hora_cita']));
	$obs_cita = htmlspecialchars(trim($_POST['obs_cita']));
	$asistio_cita = htmlspecialchars(trim($_POST['asistio_cita']));
	
	if ( $objCliente->actualizar_cita(array($id_cita,$documento_cita,$nombres_cita,$cod_cita,$motivo_cita,$fecha_cita,$hora_cita,$obs_cita,$asistio_cita),$cliente_id) == true){
		echo 'Datos guardados';
	//Archivo Log
    //ponemos tipo 'a' para añadir lineas sin borrar
    $file=fopen("log.txt","a") or die("Problemas");
    //vamos añadiendo el contenido
    fputs($file,"Actualizó Cita");
    fputs($file,",");
    fputs($file,date("d/m/Y H:i:s",time()-3600));
	fputs($file,",");
	fputs($file,"ID del paciente: ");
	fputs($file,"$id_cita");//en la petición del guardado la variable real es la del paciente
	fputs($file,",");
	fputs($file,"ID cita: ");
	fputs($file,"$cliente_id");//en la petición del guardado la variable real es la cita
    fputs($file,",");
	fputs($file,"Documento: ");
    fputs($file,"$documento_cita");
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
	<form class="form-inline" role="form" id="frmClienteActualizar" name="frmClienteActualizar" method="post" action="actualizar_cita.php" onsubmit="ActualizarCita(); return false">
    	<fieldset>
		<legend>ACTUALIZAR CITA</legend>
		<input type="hidden" name="cliente_id" id="cliente_id" value="<?php echo $cliente['id']?>" />
		<input type="hidden" name="id_cita" id="id_cita" value="<?php echo $cliente['id_cita']?>" />
		<input type="hidden" name="documento_cita" id="documento_cita" value="<?php echo $cliente['documento_cita']?>" />
		<input type="hidden" name="nombres_cita" id="nombres_cita" value="<?php echo $cliente['nombres_cita']?>" />
      <p>
	  <label>Código Cita<br />
	  <input class="form-control" type="text" name="cod_cita" id="cod_cita" value="<?php echo $cliente['cod_cita']?>" />
	  </label>
      </p>
	 <p>
	  <label>Motivo Cita<br />
	  <input class="form-control" type="text" name="motivo_cita" id="motivo_cita" value="<?php echo $cliente['motivo_cita']?>" />
	  </label>
      </p>
	  <p>
	  <label>Fecha Cita<br />
	  <input class="form-control" type="date" name="fecha_cita" id="fecha_cita" value="<?php echo $cliente['fecha_cita']?>" />
	  </label>
      </p>
	  <p>
	  <label>Hora Cita<br />
	  <input class="form-control" type="time" name="hora_cita" id="hora_cita" value="<?php echo $cliente['hora_cita']?>" />
	  </label>
      </p>
	  <p>
	  <label>Observaciones<br />
	  <textarea class="form-control" type="text" name="obs_cita" id="obs_cita">
	  <?php echo $cliente['obs_cita']?>
	  </textarea>
	  </label>
      </p>
	  <p>
	  <label>Asistencia<br />
	    <select class="form-control" type="text" name="asistio_cita" id="asistio_cita">
        <option value="SI">SI</option>
		<option value="NO">NO</option>
		<option value="APLAZADA">APLAZADA</option>
        </select>
	  </label>
      </p>
	  </fieldset>
	  <p>
		<input class="btn btn-primary" type="submit" name="submit" id="button" value="Guardar" />
		<label></label>
		<input class="btn btn-default" type="button" name="cancelar" id="cancelar" value="Cancelar" onclick="Cancelar()" />
	  </p>
	</form>
	<?php
	}
}
?>