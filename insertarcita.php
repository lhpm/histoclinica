<?php
//Lo invoque para poder tomar el usuario y grabarlo en el log.txt
	require_once("sesion.class.php");
	$sesion = new sesion();
	$usuario = $sesion->get("usuario");
require('functions.php');
if(isset($_POST['submit'])){
	require('clases/cliente.class.php');
	$objCliente=new Cliente;

	$id_cita = htmlspecialchars(trim($_POST['id_cita']));
	$documento_cita = htmlspecialchars(trim($_POST['documento_cita']));
	$nombres_cita = htmlspecialchars(trim($_POST['nombres_cita']));
	$cod_cita = htmlspecialchars(trim($_POST['cod_cita']));
	$motivo_cita = htmlspecialchars(trim($_POST['motivo_cita']));
	$fecha_cita = htmlspecialchars(trim($_POST['fecha_cita']));
	$hora_cita = htmlspecialchars(trim($_POST['hora_cita']));
	$obs_cita = htmlspecialchars(trim($_POST['obs_cita']));
	$asistio_cita = htmlspecialchars(trim($_POST['asistio_cita']));
	
	$objCliente=new Cliente;
   //ELIMINA EL NOMBRE PARA EL CAMPO CODIGO CITA
	$cod_cita = preg_replace('/[^0-9]/', " ", $cod_cita);
	//ELIMINA EL CODIGO PARA EL CAMPO MOTIVO CITA
	$motivo_cita = preg_replace('/[^A-Za-z]/', " ", $motivo_cita);
	//Este OBJCLIENTE INSERTARCITA REPLICA A cliente.class
	if ( $objCliente->insertarcita(array($id_cita, $documento_cita, $nombres_cita, $cod_cita, $motivo_cita, $fecha_cita, $hora_cita, $obs_cita, $asistio_cita)) == true){
		echo 'Datos guardados';
    //Archivo Log
    //ponemos tipo 'a' para añadir lineas sin borrar
    $file=fopen("log.txt","a") or die("Problemas");
    //vamos añadiendo el contenido
    fputs($file,"Insertar Cita Médica");
    fputs($file,",");
    fputs($file,date("d/m/Y H:i:s",time()-3600));
	fputs($file,",");
	fputs($file,"id_cita: ");
	fputs($file,"$id_cita");
    fputs($file,",");
	fputs($file,"Documento: ");
    fputs($file,"$documento_cita");
	fputs($file,",");
	fputs($file,"$motivo_cita");
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
		}
		?>
<!--  OJO: SIEMPRE RECORDAR ACTION DEL ARCHIVO Y ONSUBMIT que replica a jquery.functions.php-->
<form class="form-inline" role="form" id="frmClienteNuevo" name="frmClienteNuevo" method="post" action="insertarcita.php" onsubmit="InsertarCita(); return false">
  <img src="img/icono_cita.png" title="Ingresar Cita" alt="Ingresar Cita" />
  <img width="120px" height="140px" src="uploads/<?php echo $cliente['id'] ?>" title="Foto Paciente" alt="Foto Paciente" />
  <center>
  <div class="form-group">
  <fieldset>
  <legend>INGRESAR CITA A:</legend>
  <input class="form-control" type="text" name="documento_cita" id="documento_cita" value="<?php echo $cliente['documento'] ?>" / readonly>
  <input size="45" class="form-control" type="text" name="nombres_cita" id="nombres_cita" value="<?php echo $cliente['nombres'] ?>" / readonly>
  <p><label>ID_CITA<br />
  <input class="form-control" type="text" name="id_cita" id="id_cita" value="<?php echo $cliente['id'] ?>" / readonly>
  </label>
   <?php
   //require('clases/cliente.class.php');
   $objCliente=new Cliente;
   $consulta=$objCliente->soat();
   ?>
    <p><label>Código de la Consulta<br />
  <select name="cod_cita" id="cod_cita" class="form-control" onchange='document.frmClienteNuevo.motivo_cita.value=this.options[this.options.selectedIndex].value'>
    <option value="">Seleccione...</option>
	<?php
    if($consulta) {
	while( $soat = mysql_fetch_array($consulta) ){
	?>
    <?php echo "<option value='".$soat['codigo']."".$soat['nombre']."'>".$soat['codigo']."|".$soat['nombre']."</option>"; ?>
    <?php } } ?>
  </select>
  </label>
  </p>
  <p><label>MOTIVO DE LA CITA<br />
  <input class="form-control" type="text" name="motivo_cita" id="motivo_cita" />
  </label>
  </p>
  <p><label>FECHA DE LA CITA:<br />
  <input class="form-control" type="date" name="fecha_cita" id="fecha_cita" />
  </label>
  </p>
  <p><label>HORA DE LA CITA<br />
  <input class="form-control" type="time" name="hora_cita" id="hora_cita" />
  </label>
  </p>
  <p><label>Observaciones de la Cita<br />
  <textarea class="form-control" type="text" name="obs_cita" id="obs_cita" /></textarea>
  </label>
  </p>
  <input class="text" type="hidden" name="asistio_cita" id="asistio_cita">
  </fieldset>
  <p>
    <input class="btn btn-primary" type="submit" name="submit" id="button" value="Enviar" />
    <label></label>
    <input class="btn btn-default" type="button" class="cancelar" name="cancelar" id="cancelar" value="Cancelar" onclick="Cancelar()" />
  </p>
  </div>
</form>
</center>
<?php
}
?>