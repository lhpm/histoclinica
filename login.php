<?php
	require_once("sesion.class.php");

	$sesion = new sesion();
	
	if( isset($_POST["iniciar"]) )
	{
		
		$usuario = $_POST["usuario"];
		$password = $_POST["contrasenia"];
		
		if(validarUsuario($usuario,$password) == true)
		{			
			$sesion->set("usuario",$usuario);
			
			header("location: index.php");
		}
		else 
		{
			echo "Verifica tu nombre de usuario y contraseña";
		}
	}
	
	function validarUsuario($usuario, $password)
	{
		$conexion = new mysqli('localhost','luipat7_dg','Sistemas2018','luipat7_dg');
		$consulta = "select * from usuario where usuario = '$usuario'";
		
		$result = $conexion->query($consulta);
		
		if($result->num_rows > 0)
		{
			$fila = $result->fetch_assoc();
			if( strcmp($password,$fila["contrasenia"]) == 0 )
				return true;						
			else					
				return false;
		}
		else
				return false;
	}

?>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>HISTORIAS CLINICAS - Iniciar sesión</title>
<!-- CSS de Bootstrap -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<!-- PARA LA VENTANA EMERGENTE dialog-->
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-1.8.3.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script>
$(function() {
$( "#dialog" ).dialog();
});
</script>
<!-- FIN PARA LA VENTANA EMERGENTE -->
</head>
<body background="img/fondo1.jpg">
<center>
<!-- ancho <div class="col-xs-3">-->
<h1><span class="label label-primary">HISTORIAS CLINICAS</span></h1>
<form role="form" name="frmLogin" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="POST">
  <!-- ancho <div class="col-xs-3">-->
  <div class="input-group">
   <span class="input-group-addon">Usuario:</span>   
   <input class="form-control" type="text" name = "usuario" placeholder="Digita tu usuario"/>
   </div>
   <div class="input-group">
   <span class="input-group-addon">Contraseña:</span>
	<input class="form-control" type="password" name = "contrasenia" placeholder="Digita tu clave"/></div>
	<div><input class="btn btn-primary" type="submit" name ="iniciar" value="Iniciar Sesion"/></div>
  </div>
<!--</div>-->
</form>
<div id="dialog" title="¡ FRASE DEL DIA !">
<p><?php include("external/messenger.php"); ?></p>
</div>
<?php include_once("footer.php"); ?>
</center>
</body>
</html>