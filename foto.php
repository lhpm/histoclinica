<?php
require('functions.php');
if(isset($_POST['submit'])){
	require('clases/cliente.class.php');

	$id_foto = htmlspecialchars(trim($_POST['id_foto']));
	$foto = htmlspecialchars(trim($_POST['id_foto']));

	$objCliente=new Cliente;
	//Este OBJCLIENTE INSERTARCITA REPLICA A cliente.class
	if ( $objCliente->insertarfoto(array($id_foto, $foto)) == true){
		
		echo 'Datos guardados';
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

	<form class="form-inline" role="form" id="upload" name="frmClienteNuevo" method="post" action="upload.php" enctype="multipart/form-data" onsubmit="InsertarFoto(); return false">
		  <fieldset>
           <legend>INGRESAR FOTO A <?php echo $cliente['nombres'] ?></legend>
		   <input size="3" class="form-control" type="text" name="id_foto" id="id_foto" value="<?php echo $cliente['id'] ?>" / readonly>
			<div id="drop" class="alert alert-warning">
				<h2>Arrastrar aqui</h2>
				<input type="file" name="foto" class="alert alert-info">
            </div>
			<ul><!-- Aquí se muestra el archivo cargado con èxito LHPM UP --></ul>

		<!-- JavaScript Includes UPLOAD -->
		<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>-->
		<script src="js/jquery-1.8.3.min.js"></script>
		<script src="assets/js/jquery.knob.js"></script>

		<!-- jQuery File Upload Dependencies -->
		<script src="assets/js/jquery.ui.widget.js"></script>
		<script src="assets/js/jquery.iframe-transport.js"></script>
		<script src="assets/js/jquery.fileupload.js"></script>
		
		<!-- Our main JS file -->
		<script src="assets/js/script.js"></script>
	<!-- FIN JavaScript Includes UPLOAD -->
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