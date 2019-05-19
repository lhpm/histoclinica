<?php 
include_once("conexion.class.php");
// los function vienen de cada archivo formualario php
class Cliente{
 //constructor	
 	var $con;
 	function Cliente(){
 		$this->con=new DBManager;
 	}
	
	function insertar($campos){
		if($this->con->conectar()==true){
			//print_r($campos);
			//echo "INSERT INTO cliente (nombres, ciudad, sexo, telefono, fecha_nacimiento) VALUES ('".$campos[0]."', '".$campos[1]."','".$campos[2]."','".$campos[3]."','".$campos[4]."')";
			return mysql_query("INSERT INTO cliente (tipo_doc, documento, nombres, ciudad, sexo, telefono, celular, correo, oficio, empresa, fecha_nacimiento, edad, seguro, fecha_registro) VALUES ('".$campos[0]."', '".$campos[1]."','".$campos[2]."','".$campos[3]."','".$campos[4]."','".$campos[5]."','".$campos[6]."','".$campos[7]."','".$campos[8]."','".$campos[9]."','".$campos[10]."','".$campos[11]."','".$campos[12]."','".$campos[13]."')");
		}
	}
    // function insertarhistoria viene de insertarhistoria.php INSERTA LAS CONSULTAS DESPUES DE LA PROPIA HISTORIA
	
	function insertarhistoria($campos){
		if($this->con->conectar()==true){
			//print_r($campos);
			return mysql_query("INSERT INTO cliente (id_h, documento_consulta, nombres_consulta, cod_consulta, motivo_consultah, fecha_consulta, obs_consulta, diagnostico) VALUES ('".$campos[0]."', '".$campos[1]."', '".$campos[2]."', '".$campos[3]."', '".$campos[4]."', '".$campos[5]."', '".$campos[6]."', '".$campos[7]."')");
		}
	}
	
	function insertarcita($campos){
		if($this->con->conectar()==true){
			//print_r($campos);
			return mysql_query("INSERT INTO cliente (id_cita, documento_cita, nombres_cita, cod_cita, motivo_cita, fecha_cita, hora_cita, obs_cita, asistio_cita) VALUES ('".$campos[0]."', '".$campos[1]."', '".$campos[2]."', '".$campos[3]."', '".$campos[4]."', '".$campos[5]."', '".$campos[6]."', '".$campos[7]."', '".$campos[8]."')");
		}
	}
	
	function insertarfoto($campos){
		if($this->con->conectar()==true){
			//print_r($campos);
			return mysql_query("INSERT INTO cliente.foto (id_foto, foto) VALUES ('".$campos[0]."', '".$campos[1]."')");
		}
	}
	
	function actualizar($campos,$id){
		if($this->con->conectar()==true){
			//print_r($campos);
			return mysql_query("UPDATE cliente SET nombres = '".$campos[0]."', tipo_doc = '".$campos[1]."', documento = '".$campos[2]."', ciudad = '".$campos[3]."', sexo = '".$campos[4]."', telefono = '".$campos[5]."', celular = '".$campos[6]."', correo = '".$campos[7]."', oficio = '".$campos[8]."', empresa = '".$campos[9]."', fecha_nacimiento = '".$campos[10]."', edad = '".$campos[11]."', seguro = '".$campos[12]."', observaciones = '".$campos[13]."', fecha_registro = '".$campos[14]."' WHERE id = ".$id);
		}
	}
	
	function actualizar_cita($campos,$id){
		if($this->con->conectar()==true){
			//print_r($campos);
			return mysql_query("UPDATE cliente SET id_cita = '".$campos[0]."', documento_cita = '".$campos[1]."', nombres_cita = '".$campos[2]."', cod_cita = '".$campos[3]."', motivo_cita = '".$campos[4]."', fecha_cita = '".$campos[5]."', hora_cita = '".$campos[6]."', obs_cita = '".$campos[7]."', asistio_cita = '".$campos[8]."' WHERE id = ".$id);
		}
	}

	function historia($campos,$id){
		if($this->con->conectar()==true){
			//print_r($campos);
			return mysql_query("UPDATE cliente SET nombres = '".$campos[0]."', tipo_doc = '".$campos[1]."', documento = '".$campos[2]."', ciudad = '".$campos[3]."', sexo = '".$campos[4]."', telefono = '".$campos[5]."', celular = '".$campos[6]."', correo = '".$campos[7]."', oficio = '".$campos[8]."', empresa = '".$campos[9]."', fecha_nacimiento = '".$campos[10]."', seguro = '".$campos[11]."', observaciones = '".$campos[12]."', padre = '".$campos[13]."', madre = '".$campos[14]."', motivo_consulta = '".$campos[15]."', anamnesis_proxima = '".$campos[16]."', ante_morbico = '".$campos[17]."', ante_gine = '".$campos[18]."', ante_medicamentos = '".$campos[19]."', alergias = '".$campos[20]."', ante_personal = '".$campos[21]."', ante_familiar = '".$campos[22]."', inmunizaciones = '".$campos[23]."', fecha_registro = '".$campos[24]."' WHERE id = ".$id);
		}
	}
	
	/* DECLARO id y id_h LOS TRAIGO DE GET en archivo consulta.php y funcion verhistoria
	para las consultas registradas llamada en verhistoria.php*/
	function verhistoria($id,$id_h){
		if($this->con->conectar()==true){
			return mysql_query("SELECT * FROM cliente WHERE id_h=".$id);
		}
	}
	
		/* DECLARO id y id_cita LOS TRAIGO DE GET en archivo consulta.php y funcion verhistoria
	para las consultas registradas llamada en vercita.php*/
	function vercita($id,$id_cita){
		if($this->con->conectar()==true){
			return mysql_query("SELECT * FROM cliente WHERE id_cita=".$id);
		}
	}
	
	function mostrar_cliente($id){
		if($this->con->conectar()==true){
			return mysql_query("SELECT * FROM cliente WHERE id=".$id);
		}
	}

	function mostrar_clientes(){
		if($this->con->conectar()==true){
			return mysql_query("SELECT * FROM cliente WHERE id_h='0' && id_cita='0' ORDER BY id DESC");
		}
	}
	
	function verconsultas(){
		if($this->con->conectar()==true){
			return mysql_query("SELECT * FROM cliente WHERE id_h<>'0' ORDER BY id DESC");
		}
	}
	
	function vercitas(){
		if($this->con->conectar()==true){
			return mysql_query("SELECT * FROM cliente WHERE id_cita<>'0' ORDER BY id DESC");
		}
	}
	
	function soat(){
		if($this->con->conectar()==true){
			return mysql_query("SELECT * FROM soat");
		}
	}

	function eliminar($id){
		if($this->con->conectar()==true){
			return mysql_query("DELETE FROM cliente WHERE id=".$id);
		}
	}
	
}
?>