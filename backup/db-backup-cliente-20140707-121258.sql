CREATE DATABASE IF NOT EXISTS cliente;

USE cliente;

DROP TABLE IF EXISTS cliente;

CREATE TABLE `cliente` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `id_h` int(7) NOT NULL,
  `id_cita` int(7) NOT NULL,
  `tipo_doc` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sexo` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `celular` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `correo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `oficio` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `empresa` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `edad` int(3) NOT NULL,
  `seguro` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `padre` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `madre` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `motivo_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `anamnesis_proxima` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ante_morbico` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ante_gine` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ante_medicamentos` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `alergias` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ante_personal` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ante_familiar` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `inmunizaciones` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_registro` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombres_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cod_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `motivo_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `hora_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `obs_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `asistio_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombres_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cod_consulta` int(11) NOT NULL,
  `motivo_consultah` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `obs_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=184 DEFAULT CHARSET=latin1;

INSERT INTO cliente VALUES("94","0","0","CC","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","CUCUTA","M","123456","3156980335","lhpm16@hotmail.com","TECNOLOGO EN SISTEMAS","CONSTRUCOL","1977-08-16 00:00:00","0","COOMEVA","undefined","HERNANDO ARTURO","CECILIA MACHADO","GRIPE","","","MUJER","","","","","","2014-06-17 20:28:43","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("136","0","0","CC","6895245245","JULIANA CONTRERAS","VILLA ROSARIO","M","43345345","31569854004","JULIANA@HOTMAIL.COM","ADMIN EMPRESA","PETROL","2014-06-23 00:00:00","0","COOMEVA","","","","","","","","","","","","","2014-06-23 00:28:55","","","","","","","","","","","0","","","");
INSERT INTO cliente VALUES("122","0","0","CC","465345","GONSALO CASTRO","ChinÃ¡cota","M","5869977","3205897435","GONSALO@GMAIL.COM","COMERCIANTE","COMPARTA","2014-06-21 00:00:00","0","COMPARTA","","","","","","","","","","","","","2014-06-21 19:54:15","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("120","0","0","CC","882569324","CECILIA PEREZ","CHINACOTA","M","5869215","3158590124","CECILIA@GMAIL.COM","COMERCIANTE","COMERCIANTE","2014-06-21 00:00:00","0","COOMEVA","","CECILIO","LOLA PEREZ","MOTIVO DE LA CONSULTA","ANAMNESIS PRÃ“XIMA","ANTECEDENTES MÃ“RBICOS","ANTECEDENTES GINECOOBSTÃ‰TRICOS","ANTECEDENTES USO MÃ‰DICAMENTOS","POLVO","ALCOHOL","ANTECEDENTES FAMILIARES","AMARILLA, RABICA","2014-06-21 19:52:36","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("121","0","0","CC","889632547","JULIO CESAR MONTAÃ‘ES","CHINACOTA","M","121212","3218951243","JULIO@HOTMAIL.COM","INDEPENDIENTE","COMERCIANTE","2014-06-21 00:00:00","0","SALUDCOOP","","","","","","","","","","","","","2014-06-21 19:53:43","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("123","0","0","CC","687452104","MARTA LOPEZ","CUCUTA","F","58692015","3159580124","MARTA@HOTMAIL.COM","COMERCIANTE","COMERCIANTE","2014-06-21 00:00:00","0","COMPARTA","","","","","","","MUJER","","","","","","2014-06-21 19:56:35","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("124","0","0","CC","85962101","PABLO RAMIREZ","CHINACOTA","M","5864125","3256938","AAAA@HOTMAIL.COM","COMERCIANTE","SALUDCOOP","2014-06-21 00:00:00","0","COMPARTA","","","","","","","","","","","","","2014-06-21 20:13:43","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("126","0","0","CC","456456453453","JOSE ZAMBRANO","MEDELLIN","M","5789922","3154780125","ZAMBRANO@hotmail.com","ELECTRONICO","COLSALUD","2014-06-21 00:00:00","0","COLSALUD","","","","","","","","","","","","","2014-06-21 20:14:22","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("128","0","0","CC","665201245","PILAR OMAÃ‘A","NEW YORK","F","5869900","31058452","PILAR@GMAIL.COM","DISEÃ‘O DE MODAS","DESIGN WOMAN","2014-06-21 00:00:00","0","COOMEVA","","","","","","","","","","","","","2014-06-21 20:38:40","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("129","0","0","CC","88779963","FELIPE MONSALVE","BOGOTA","M","123456","3205896454","felipe@hotmail.com","ingeniero PETROLEO","ECOPETROL","2014-06-22 00:00:00","0","SALUDCOOP","","","","","","","","","","","","","2014-06-22 21:44:41","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("130","0","0","CC","65252114788","CAROLINA BUITRAGO","CHINACOTA","F","","316580125","CAROLINA@HOTMAIL.COM","ADMIN EMPRESAS","TEXTIL CARO","2014-06-22 00:00:00","0","COMPARTA","","","","","","","","","","","","","2014-06-22 21:53:53","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("131","0","0","CC","885124963","HECTOR ANDRADE","CUCUTA","M","57852360","3102590247","HECTOR@HOTMAIL.COM","ING INDUSTRIAL","SALUDCOOP","2014-06-22 00:00:00","0","SALUDCOOP","","HECTOR ANDRADE","LOLA PEREZ","ALERGIA","","","","","","","","","2014-06-22 21:55:39","","","0","","","","","","","","0","","","");
INSERT INTO cliente VALUES("163","0","0","CC","65212457","ALBERTO PINEDA","BOGOTA","M","5789521","3105482014","ALBERTO@HOTMAIL.COM","OBRERO","NINGUNA","1980-06-17 00:00:00","0","COMPARTA","","","","","","","","","","","","","2014-06-25 02:25:03","","","","","","","","","","","0","","","");
INSERT INTO cliente VALUES("161","94","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","9001","MEDICINA GENERAL","2014-06-25 01:30:47","OBV CONSULTA");
INSERT INTO cliente VALUES("162","120","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","882569324","CECILIA PEREZ","9001","GENERAL","2014-06-25 01:32:05","OBV GENERAL");
INSERT INTO cliente VALUES("153","0","0","CC","88541256","CARLOS LOPEZ CASTILLO JAUREGUI","CHINACOTA","M","","31258970125","CARLOS@HOTMAIL.COM","ALMACENISTA","EXITO","2014-06-24 00:00:00","0","SALUDVIDA","","","","","","","","","","","","","2014-06-24 21:51:03","","","","","","","","","","","0","","","");
INSERT INTO cliente VALUES("160","0","94","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","9001","MEDICINA GENERAL","2014-06-30","09:25","OB CITA","SI","","","0","","","");
INSERT INTO cliente VALUES("164","121","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","889632547","JULIO CESAR MONTAÃ‘ES","9005","LABORATORIO","2014-06-25 02:39:28","OBV");
INSERT INTO cliente VALUES("165","0","121","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","889632547","JULIO CESAR MONTAÃ‘ES","9001","MEDICINA GENERAL","2014-06-30","22:25","OBV","","","","0","","","");
INSERT INTO cliente VALUES("166","0","121","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","889632547","JULIO CESAR MONTAÃ‘ES","9005","LABORATORIO","2014-06-30","11:25","OBV","","","","0","","","");
INSERT INTO cliente VALUES("167","0","121","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","889632547","JULIO CESAR MONTAÃ‘ES","9006","ODONTOLOGIA","2014-06-30","15:30","","","","","0","","","");
INSERT INTO cliente VALUES("168","0","0","CC","456456","JORGE MUJICA","sDG","M","","4566456","","","","2014-06-24 00:00:00","0","","","","","","","","","","","","","","2014-06-24 20:55:00","","","","","","","","","","","0","","","");
INSERT INTO cliente VALUES("169","0","0","CC","5345345","LILIANA PEREZ","CHINACOTA","F","","456456456","","","","0000-00-00 00:00:00","22","","","","","","","","","","","","","","2014-06-24 20:58:36","","","","","","","","","","","0","","","");
INSERT INTO cliente VALUES("175","94","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","0","Consulta de urgencias","2014-07-05 16:08:09","sdzfasdfasdf");
INSERT INTO cliente VALUES("171","0","0","CC","5673567","TEST4","DSFGDSG","M","","45642562456","","","","1993-07-21 00:00:00","21","","","","","","","","","","","","","","2014-06-25 11:30:49","","","","","","","","","","","0","","","");
INSERT INTO cliente VALUES("172","171","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","5673567","TEST4","9001","MEDICINA GENERAL","2014-06-25 19:00:12","OBV");
INSERT INTO cliente VALUES("173","0","171","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","5673567","TEST4","9001","MEDICINA GENERAL","2014-06-30","08:30","OBV","","","","0","","","");
INSERT INTO cliente VALUES("174","94","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","9002","LABORATORIO","2014-06-25 23:37:53","FXGDFGDFG");
INSERT INTO cliente VALUES("176","0","94","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","Consulta de urgencias","Consulta de urgencias","","","","","","","0","","","");
INSERT INTO cliente VALUES("177","0","120","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","882569324","CECILIA PEREZ","39145Consulta de urgencias","39145Consulta de urgencias","","","","","","","0","","","");
INSERT INTO cliente VALUES("178","0","94","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141Consulta ambulatoria de medicina general","39141Consulta ambulatoria de medicina general","","","","","","","0","","","");
INSERT INTO cliente VALUES("179","94","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","2014-07-07 17:18:07","");
INSERT INTO cliente VALUES("180","94","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39145","39145Consulta de urgencias","2014-07-07 17:20:36","");
INSERT INTO cliente VALUES("181","0","0","CC","887766","DIANA GUTIERREZ","CUCUTA","F","123","35345345","LHPM@HOTMAIL.COM","","","1987-07-22 00:00:00","26","","","","","","","","","","","","","FIEBRE AMARILLA","2014-07-07 10:54:30","","","","","","","","","","","0","","","");
INSERT INTO cliente VALUES("182","181","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","887766","DIANA GUTIERREZ","39141","39141Consulta ambulatoria de medicina general","2014-07-07 18:01:56","DGDFGDFSGDFSGSDFGSDGSDFG");
INSERT INTO cliente VALUES("183","0","181","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","887766","DIANA GUTIERREZ","39141Consulta ambulatoria de medicina general","39141Consulta ambulatoria de medicina general","2014-08-07","06:03","HFJDFKDHFJSHDHFJS","APLAZADA","","","0","","","");



DROP TABLE IF EXISTS soat;

CREATE TABLE `soat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO soat VALUES("1","39141","Consulta ambulatoria de medicina general");
INSERT INTO soat VALUES("2","39145","Consulta de urgencias");



