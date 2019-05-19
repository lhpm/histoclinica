<?php
date_default_timezone_set('America/Bogota');
//Lo invoque para poder tomar el usuario y grabarlo en el log.txt
	require_once("sesion.class.php");
	$sesion = new sesion();
	$usuario = $sesion->get("usuario");
require('functions.php');
if(isset($_POST['submit'])){
	require('clases/cliente.class.php');

	$tipo_doc = htmlspecialchars(trim($_POST['tipo_doc']));
	$documento = htmlspecialchars(trim($_POST['documento']));
	$nombres = htmlspecialchars(trim($_POST['nombres']));
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
	$fecha_registro = htmlspecialchars(trim($_POST['fecha_registro']));
	
	$objCliente=new Cliente;
	if ( $objCliente->insertar(array($tipo_doc,$documento,$nombres,$ciudad,
	$sexo,$telefono,$celular,$correo,$oficio,$empresa,$fecha_nacimiento,$edad,
	$seguro,$fecha_registro)) == true){
	//Archivo Log
    //ponemos tipo 'a' para añadir lineas sin borrar
    $file=fopen("log.txt","a") or die("Problemas");
    //vamos añadiendo el contenido
    fputs($file,"Creado Nuevo Paciente");
    fputs($file,",");
    fputs($file,date("d/m/Y H:i:s",time()-3600));
    fputs($file,",");
    fputs($file,"$documento");
	fputs($file,",");
    fputs($file,"$usuario");
	fputs($file,",");
	fputs($file,"{$_SERVER['REMOTE_ADDR']}");
	fputs($file,"\r\n");
    fclose($file);
		echo 'Datos guardados';
	}
	else{
		echo 'Se produjo un error. Intente nuevamente';
	} 
}
else{
?>
<form class="form-inline" role="form" id="frmClienteNuevo" name="frmClienteNuevo" method="post" action="nuevo.php" onsubmit="GrabarDatos(); return false">
  <fieldset>
    <legend>INGRESAR PACIENTE</legend>
  <div class="form-group">
  <div class="tab">
	<a class="btn btn-success" href="#primero">PERSONAL</a><a class="btn btn-info" href="#segundo">CONTACTO</a><a class="btn btn-danger" href="#tercero">SEGURO</a><div class="clear"></div>
  </div>
<div class="contenedor">
<div id="primero">
  <label>Nombres<br />
  <input class="form-control" type="text" name="nombres" id="nombres" size="50" placeholder="Nombres y Apellidos" required="required">
  </label>
  <p>
  <label>Tipo Documento<br />
  <select type="text" name="tipo_doc" id="tipo_doc" class="form-control" required="required">
        <option value="CC">Cédula</option>
		<option value="TI">Tarjeta de Identidad</option>
		<option value="NUI">Num único identificación</option>
		<option value="RC">Registro Civil</option>
		<option value="OT">Otro</option>
  </select>
  </label>
  <label>Documento<br />
  <input class="form-control" type="text" name="documento" id="documento" class="form-control" placeholder="Digitar documento" required="required">
  </label>
  <br>
    <label>
    <input class="form-control" type="radio" name="alternativas" id="masculino" value="M" />
    Masculino</label>
    <label>
    <input class="form-control" type="radio" name="alternativas" id="femenino" value="F" />
    Femenino</label>
  </p>
    <p>
    <label>Fecha Nacimiento<br />
<script type="text/javascript">
function calcular_edad(){
    var frm = document.frmClienteNuevo;
    var fechanac = frm.fecha_nacimiento.value;
   	var diaB=<?php echo date('d')?>;
	var mesB=<?php echo date('m')?>;
	var anoB=<?php echo date('Y')?>;
	var array_fecha = fechanac.split("-") 
	var ano = parseInt(array_fecha[0]);
	var mes = parseInt(array_fecha[1]); 
	var dia = parseInt(array_fecha[2]);	
//	alert(ano);
	edad = anoB - ano;
//	alert(edad);
	edad = anoB - ano - 1; //-1 No se sabe si cumplio o no años este año 
   	if (mesB + 1 - mes < 0) //-1 
      	{ edad = edad - 1; }
   	if (mesB + 1 - mes > 0)//Igual 
      	{ edad = edad;     }
   	if (diaB - dia >= 0)//+1 
      	{ edad = edad + 1; }
	frm.edad.value = edad;
}
</script> 
    <input class="form-control" type="date" name="fecha_nacimiento" id="fecha_nacimiento" onblur="calcular_edad(this.value)" />
    </label>
    <label>Edad<br />
    <input class="form-control" type="text" name="edad" id="edad">
	</label>
  </p>
    <p>
    <label>Ciudad<br />
    <input class="form-control" type="text" name="ciudad" id="ciudad" placeholder="Ciudad">
  </label>
  </p>
  </div><!-- FIN DIV TAB 1 -->
  <div id="segundo">
  <p>
    <label>Telefono<br />
    <input class="form-control" type="tel" name="telefono" id="telefono" placeholder="Teléfono">
    </label>
    <label>Celular<br />
    <input class="form-control" type="tel" name="celular" id="celular" placeholder="Celular" required="required">
    </label>
	<p>
    <label>Correo<br />
    <input class="form-control" type="email" name="correo" id="correo" placeholder="Correo">
    </label>
    <label>Oficio<br />
    <input class="form-control" type="text" name="oficio" id="oficio" placeholder="Desempeña">
    </label>
  </p>
	</div><!-- FIN DIV TAB 2 -->
	<div id="tercero">
  <p>
    <label>Empresa<br />
    <input class="form-control" type="text" name="empresa" id="empresa" placeholder="Donde trabaja">
    </label>
  </p>
  <p>
    <label>Seguro EPS<br />
    <input class="form-control" type="text" name="seguro" id="seguro" placeholder="Afiliación">
    </label>
  </p>

  <p>
	<label>Fecha de registro<br />
    <input readonly="readonly" class="form-control" type="text" name="fecha_registro" id="fecha_registro" value="<?php echo date("Y-m-d H:i:s",time()-3600);?>" />
    </label>
  </p>
    </div><!-- FIN DIV TAB 3 -->
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
  </div><!-- FIN DIV CONTENEDOR -->
  <p>
    <input class="btn btn-primary" type="submit" name="submit" id="button" value="Guardar" />
    <input class="btn btn-default" type="button" class="cancelar" name="cancelar" id="cancelar" value="Cancelar" onclick="Cancelar()" />
  </p>
  </div>
</form>
</fieldset>	
<?php
}
?>