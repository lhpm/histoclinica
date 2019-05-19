<!-- BUSCADOR ORDENADOR POR CAMPO Y PAGINADOR DE TABLA -->
<link type="text/css" href="css/demo_table.css" rel="stylesheet" />
<script type="text/javascript" language="javascript" async src="js/jquery.dataTables.js"></script>
<script type="text/javascript" language="javascript" async src="js/paginacionlhpm.js"></script>
<!-- FIN BUSCADOR ORDENADOR POR CAMPO Y PAGINADOR DE TABLA -->
<?php
		
		require('clases/cliente.class.php');
		$objCliente=new Cliente;
		$consulta = $objCliente->mostrar_cliente($_GET['id'],$_GET['id_h']);
		$cliente = mysql_fetch_array($consulta);
	?>
	<?php //TOTAL CONSULTAS POR PACIENTE
    $resultados = mysql_query("SELECT * FROM cliente WHERE id_h=".$cliente['id']);
    $total_consultas = mysql_num_rows($resultados); ?>
     <table border="0">
	  <tr><td valign="top" align="left">
      </td>
	  <td valign="top" align="left">
	  <img width="120px" height="140px" src="uploads/<?php echo $cliente['id'] ?>" title="Foto Paciente" alt="Foto Paciente" />
	  <h5><span class="label label-primary">Consultas: <?php echo $total_consultas; ?></span></h5>
	  </td>
	  <td valign="top" align="left">
	  <div class="form-group">
       <h3><span class="label label-primary">HISTORIA CLINICA</span></h3>
	   <br>
	   <input type="hidden" name="cliente_id" id="cliente_id" value="<?php echo $cliente['id'] ?>" />
	   <p class="text-left">
	   <br>
	   <h5><span class="label label-success">DATOS PERSONALES</span>
	   <br><br>
	   Nombres y Apellidos: <b><?php echo $cliente['nombres']?></b>
	   Documento: <b><?php echo $cliente['tipo_doc']?> <?php echo $cliente['documento']?></b>
       Sexo: <b><?php echo $cliente['sexo']?></b>
	   <br>
	   Fecha de nacimiento: <b><?php echo date("d-m-Y",strtotime($cliente['fecha_nacimiento']));?></b>
	   Edad: <b><?php echo $cliente['edad'] ?></b>
	   </h5></p>
	   <p class="text-left">
	   <br>
	   <h5><span class="label label-primary">PADRES</span>
	   <br><br>
       PADRE: <b><?php echo $cliente['padre']?></b>
	   MADRE: <b><?php echo $cliente['madre']?></b>
	   </h5></p>
	   <p class="text-left">
	   <br>
	   <h5><span class="label label-info">CONTACTO</span>
	   <br><br>
	   Ciudad de Residencia: <b><?php echo $cliente['ciudad']?></b>
	   Teléfono: <b><?php echo $cliente['telefono']?></b>
	   Celular: <b><?php echo $cliente['celular']?></b>
	   Correo: <b><?php echo $cliente['correo']?></b>
	   <br>
	   Oficio: <b><?php echo $cliente['oficio']?></b>
	   Empresa: <b><?php echo $cliente['empresa']?></b>
	   </h5></p>
	   <p class="text-left">
	   <br>
	   Seguro: <b><?php echo $cliente['seguro']?></b>
	   </h5></p>
	  </td></tr>
	  
     <tr><td valign="top" align="left">
	  </td>
	  
     <td valign="top">
	  </td>
	  <td valign="top">
	  </td>
	  </tr></table>
	  <center>
	  <fieldset class="fieldset">
      <legend>Motivo de la Consulta</legend>
	  <p>
	  <label>Descripción
	  <textarea rows="3" cols="20" class="form-control" type="text" name="motivo_consulta" id="motivo_consulta" readonly>
	  <?php echo $cliente['motivo_consulta']?>
	  </textarea>
	  </label>
      </p>
	  </fieldset>
      <fieldset>
      <legend>Anamnesis Próxima</legend>
	  <p>
	  <label>Resumen
	  <textarea rows="3" cols="20" class="form-control" type="text" name="anamnesis_proxima" id="anamnesis_proxima" readonly>
	  <?php echo $cliente['anamnesis_proxima']?>
	  </textarea>
	  </label>
      </p>
	  </fieldset>
	  <fieldset>
      <legend>Antecedentes - Anamnesis Remota</legend>
      <p>
	  <label>Antecedentes Mórbicos
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_morbico" id="ante_morbico" readonly>
	  <?php echo $cliente['ante_morbico']?>
	  </textarea>
	  </label>
      </p>
      <p>
	  <label>Antecedentes Ginecoobstétricos
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_gine" id="ante_gine" readonly>
	  <?php echo $cliente['ante_gine']?>
	  </textarea>
	  </label>
      </p>
      <p>
	  <label>Antecedentes uso médicamentos
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_medicamentos" id="ante_medicamentos" readonly>
	  <?php echo $cliente['ante_medicamentos']?>
	  </textarea>
	  </label>
      </p>
      <p>
	  <label>Alergias<br />
	  <textarea rows="3" cols="20" class="form-control" type="text" name="alergias" id="alergias" readonly>
	  <?php echo $cliente['alergias']?>
	  </textarea>
	  </label>
      </p>
      <p>
	  <label>Antecedentes sociales y personales
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_personal" id="ante_personal" readonly>
	  <?php echo $cliente['ante_personal']?>
	  </textarea>
	  </label>
      </p>
      <p>
	  <label>Antecedentes familiares
	  <textarea rows="3" cols="20" class="form-control" type="text" name="ante_familiar" id="ante_familiar" readonly>
	  <?php echo $cliente['ante_familiar']?>
	  </textarea>
	  </label>
      </p>
      <p>
	  <label>Inmunizaciones
	  <textarea rows="3" cols="20" class="form-control" type="text" name="inmunizaciones" id="inmunizaciones" readonly>
	  <?php echo $cliente['inmunizaciones']?>
	  </textarea>
	  </label>
      </p>
	  <input class="text" type="hidden" name="fecha_registro" id="fecha_registro" value="<?php echo $cliente['fecha_registro']?>" />	  
	  <p>
		<input class="btn btn-default" type="button" name="cancelar" id="cancelar" value="Cerrar" onclick="Cancelar()" />
	  </p>
	  </fieldset>
	  </div>
	</form>
	</center>
<?php
//require('clases/cliente.class.php');
$objCliente=new Cliente;
$consulta=$objCliente->verhistoria($_GET['id'],$_GET['id_h']);
//PRUEBA DE TRANSFERIR EL VALOR DE LA VARIABLE POR GET desde el archivo consulta.php y la función
//verhistoria en cliente.class.php
//echo $_GET['id'];
//echo $_GET['id_h'];
?>
<span style="text-align:center;width:300px;margin:auto;display:block;margin-top:20px;">CONSULTAS REALIZADAS</span>
<table class="display" id="paginacionlhpm">
	  <thead>
   		<tr>
		    <th>ID</th>
			<th>ID_H</th>
			<th>Código</th>
			<th>Motivo</th>
			<th>Diagnóstico</th>
			<th>Fecha consulta</th>
			<th>Observaciones</th>
			<th>X</th>
        </tr>
	  </thead>
	  <tbody>
<?php
if($consulta) {
	while( $cliente = mysql_fetch_array($consulta) ){
	?>
		  <tr id="fila-<?php echo $cliente['id'] ?>">
		      <td><?php echo $cliente['id'] ?></td>
			  <td><?php echo $cliente['id_h'] ?></td>
			  <td><?php echo $cliente['cod_consulta'] ?></td>
			  <td><?php echo $cliente['motivo_consultah'] ?></td>
			  <td><?php echo $cliente['diagnostico'] ?></td>
			  <td><?php echo date("d-m-Y,h:m:s:a",strtotime($cliente['fecha_consulta']));?></td>
			  <td><?php echo $cliente['obs_consulta'] ?></td>

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
			   ?><td align="center"><span class="dele"><a onClick="EliminarDato(<?php echo $cliente['id'] ?>); return false" href="eliminar.php?id=<?php echo $cliente['id'] ?>"><img src="img/eliminar.png" title="Eliminar" alt="Eliminar" /></a></span></td>
		  	   <?php
			   }
	           else{
			   ?><td align="center"><span class="dele"><img src="img/eliminar.png" title="" alt="" /></span></td>
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
