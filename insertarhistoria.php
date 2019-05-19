<?php
//Lo invoque para poder tomar el usuario y grabarlo en el log.txt
	require_once("sesion.class.php");
	$sesion = new sesion();
	$usuario = $sesion->get("usuario");
require('functions.php');
if(isset($_POST['submit'])){
	require('clases/cliente.class.php');

	$id_h = htmlspecialchars(trim($_POST['id_h']));
	$documento_consulta = htmlspecialchars(trim($_POST['documento_consulta']));
	$nombres_consulta = htmlspecialchars(trim($_POST['nombres_consulta']));
	$cod_consulta = htmlspecialchars(trim($_POST['cod_consulta']));
	$motivo_consultah = htmlspecialchars(trim($_POST['motivo_consultah']));
	$fecha_consulta = htmlspecialchars(trim($_POST['fecha_consulta']));
	$obs_consulta = htmlspecialchars(trim($_POST['obs_consulta']));
	$diagnostico = htmlspecialchars(trim($_POST['diagnostico']));
	
	$objCliente=new Cliente;
	//ELIMINA EL CODIGO PARA EL CAMPO MOTIVO CONSULTA
	$motivo_consultah = ereg_replace("[^A-Za-z]", " ", $motivo_consultah);
	//Este OBJCLIENTE INSERTARHISTORIA REPLICA A cliente.class
	if ( $objCliente->insertarhistoria(array($id_h, $documento_consulta, $nombres_consulta, $cod_consulta, $motivo_consultah, $fecha_consulta, $obs_consulta, $diagnostico)) == true){
		echo 'Datos guardados';

	//Archivo Log
    //ponemos tipo 'a' para añadir lineas sin borrar
    $file=fopen("log.txt","a") or die("Problemas");
    //vamos añadiendo el contenido
    fputs($file,"Insertar Consulta Médica");
    fputs($file,",");
    fputs($file,date("d/m/Y H:i:s",time()-3600));
	fputs($file,"ID de la Consulta: ");
	fputs($file,"$id_h");
    fputs($file,"$motivo_consultah");
    fputs($file,",");
	fputs($file,"Motivo: ");
    fputs($file,"$motivo_consultah");
	fputs($file,",");
	fputs($file,"$diagnostico");
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
		<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<!--  OJO: SIEMPRE RECORDAR ACTION DEL ARCHIVO Y ONSUBMIT que replica a jquery.functions.php-->
<form class="form-inline" role="form" id="frmClienteNuevo" name="frmClienteNuevo" method="post" action="insertarhistoria.php" onsubmit="InsertarHistoria(); return false">
  <img src="img/icono_consulta.jpg" title="Ingresar Consulta" alt="Ingresar Consulta">
  <img width="120px" height="140px" src="uploads/<?php echo $cliente['id'] ?>" title="Foto Paciente" alt="Foto Paciente" />
  <center>
  <fieldset>
  <legend>INGRESAR CONSULTA A:</legend>
  <div class="form-group">
  <input size="20" class="form-control" type="text" name="documento_consulta" id="documento_consulta" value="<?php echo $cliente['documento'] ?>" readonly>
  <input size="45" class="form-control" type="text" name="nombres_consulta" id="nombres_consulta" value="<?php echo $cliente['nombres'] ?>" readonly>
    <p><label>ID_H<br />
  <input size="5" class="form-control" type="text" name="id_h" id="id_h" value="<?php echo $cliente['id'] ?>" readonly>
  </label>
   <?php
   //require('clases/cliente.class.php');
   $objCliente=new Cliente;
   $consulta=$objCliente->soat();
   ?>
  <p><label>Código de la Consulta<br />
  <select name="cod_consulta" id="cod_consulta" class="form-control" onchange='document.frmClienteNuevo.motivo_consultah.value=this.options[this.options.selectedIndex].value'>
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
  <p><label>Motivo de la Consulta<br />
  <input size="50" class="form-control" type="text" name="motivo_consultah" id="motivo_consultah">
  </label>
 <link type="text/css" rel="stylesheet" href="css/jquery-ui.css">
<script type="text/javascript" src="js/jquery-ui.js"></script>
     <script type="text/javascript">
      $(document).ready(function(){
         var arrayValoresAutocompletar = [
            "Sellante presente","Exodoncia","Exodoncia quirúrgica",
            "Diagnostico"
         ];
         $("#diagnostico").autocomplete({
            source: arrayValoresAutocompletar
         })
      })
   </script>
  <p><label>Diagnóstico<br />
  <input size="50" class="form-control" type="text" name="diagnostico" id="diagnostico">
  </label>
  </p>
  <p><label>Fecha Consulta<br />
  <input class="form-control" type="text" name="fecha_consulta" id="fecha_consulta" value="<?php echo date("Y-m-d H:i:s",time()-3600);?>">
  </label>
  </p>
  <p><label>Observaciones de la Consulta<br />
  <textarea class="form-control" type="text" name="obs_consulta" id="obs_consulta"></textarea>
  </label>
  </p>
  </fieldset>
  <p>
    <input class="btn btn-primary" type="submit" name="submit" id="button" value="Guardar">
    <label></label>
    <input class="btn btn-default" type="button" class="cancelar" name="cancelar" id="cancelar" value="Cancelar" onclick="Cancelar()">
  </p>
  </div>
</form>
</center>
<?php
}
?>