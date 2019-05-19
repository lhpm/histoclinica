<?php
	require_once("../sesion.class.php");
	
	$sesion = new sesion();
	$usuario = $sesion->get("usuario");
	
	if( $usuario == false )
	{	
		header("Location: login.php");		
	}
	else 
	{
	echo "Usuario:";
	print '<span class="label label-success">'.$usuario.'</span>';
	print '<p><a href="../cerrarsesion.php" class="btn btn-default" role="button">Cerrar sesión</a></p>';
	?>
<?php 
include("conex.php");
date_default_timezone_set('America/Bogota');
//Seleccionamos los registros de la tabla
$query = mysql_query("SELECT * FROM usuario", $cn);

$paises = array(
			"1"=>"Argentina",
			"2"=>"Bolivia",
			"3"=>"Peru",
			"4"=>"Chile"
		 );

?>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>MODIFICAR ADMINNISTRADORES</title>
<script type="text/javascript" src="../js/jquery-1.3.1.min.js"></script>
<script type="text/javascript" src="jquery.jeditable.js"></script>
<script type="text/javascript" src="js.js"></script>
<link type="text/css" rel="stylesheet" href="../css/estilo.css" />
<!-- CSS de Bootstrap -->
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">

	<fieldset id="content">
    	<legend>MODIFICAR ADMINNISTRADORES</legend>
    	<table>
            <thead>
            	<tr class="head">
                    <th>usuario</th>
                    <th>contrasenia</th>
                </tr>
            </thead>
            <tbody>
            	<?php
				while($row = mysql_fetch_array($query))
				{
					$id = $row['id'];
					?>
					<tr>
                        <td><div class="text" id="usuario-<?php echo $id ?>"><?php echo $row['usuario']?></div></td>
                        <td><div class="text" id="contrasenia-<?php echo $id ?>"><?php echo $row['contrasenia']?></div></td>
                    </tr>
					<?php
				}
					mysql_free_result($query);
                    mysql_close();
				 ?>
            </tbody>
        </table>
    </fieldset>
		<?php 
	}	
?>