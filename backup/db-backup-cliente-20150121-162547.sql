CREATE DATABASE IF NOT EXISTS cliente;

USE cliente;

DROP TABLE IF EXISTS cliente;

CREATE TABLE `cliente` (
  `id` int(7) NOT NULL AUTO_INCREMENT,
  `id_h` int(7) NOT NULL,
  `id_cita` int(7) NOT NULL,
  `tipo_doc` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombres` varchar(50) CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `ciudad` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sexo` char(1) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `celular` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `correo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `oficio` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `empresa` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `edad` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
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
  `fecha_cita` text CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `hora_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `obs_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `asistio_cita` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `nombres_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cod_consulta` int(11) NOT NULL,
  `motivo_consultah` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diagnostico` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `fecha_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `obs_consulta` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=234 DEFAULT CHARSET=latin1;

INSERT INTO cliente VALUES("94","0","0","CC","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","CUCUTA","M","123456","3156980335","lhpm16@hotmail.com","TECNOLOGO EN SISTEMAS","CONSTRUCOL","1977-08-16 00:00:00","37","COOmeva","undefined","HERNANDO ARTURO","CECILIA MACHADO","ALERGIA","","NINGUNO","MUJER","","sdfasdfasdf","","","","2014-06-17 20:28:43","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("136","0","0","CC","6895245245","JULIANA CONTRERAS","VILLA ROSARIO","M","43345345","31569854004","JULIANA@HOTMAIL.COM","ADMIN EMPRESA","PETROL","2014-06-23 00:00:00","0","COOMEVA","","","","","","","","","","","","","2014-06-23 00:28:55","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("122","0","0","CC","465345","GONSALO CASTRO","ChinÃ¡cota","M","5869977","3205897435","GONSALO@GMAIL.COM","COMERCIANTE","COMPARTA","2014-06-21 00:00:00","0","COMPARTA","","","","","","","","","","","","","2014-06-21 19:54:15","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("120","0","0","CC","882569324","CECILIA FLOREZ","CHINACOTA","M","5869215","3158590124","CECILIA@GMAIL.COM","COMERCIANTE","COMERCIANTE","2014-06-21 00:00:00","0","COOMEVA","","CECILIO","LOLA PEREZ","MOTIVO DE LA CONSULTA","ANAMNESIS PRÃ“XIMA","ANTECEDENTES MÃ“RBICOS","ANTECEDENTES GINECOOBSTÃ‰TRICOS","ANTECEDENTES USO MÃ‰DICAMENTOS","POLVO","ALCOHOL","ANTECEDENTES FAMILIARES","AMARILLA, RABICA","2014-06-21 19:52:36","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("121","0","0","CC","889632547","JULIO CESAR MONTAÃ‘ES","CHINACOTA","M","121212","3218951243","JULIO@HOTMAIL.COM","INDEPENDIENTE","COMERCIANTE","2014-06-21 00:00:00","0","SALUDCOOP","","","","","","","","","","","","","2014-06-21 19:53:43","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("123","0","0","CC","687452104","MARTA LOPEZ","CUCUTA","F","58692015","3159580124","MARTA@HOTMAIL.COM","COMERCIANTE","COMERCIANTE","2014-06-21 00:00:00","0","COMPARTA","","","","","","","MUJER","","","","","","2014-06-21 19:56:35","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("124","0","0","CC","85962101","PABLO RAMIREZ","CHINACOTA","M","5864125","3256938","AAAA@HOTMAIL.COM","COMERCIANTE","SALUDCOOP","2014-06-21 00:00:00","0","COMPARTA","","","","","","","","","","","","","2014-06-21 20:13:43","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("126","0","0","CC","456456453453","JOSE ZAMBRANO","MEDELLIN","M","5789922","3154780125","ZAMBRANO@hotmail.com","ELECTRONICO","COLSALUD","2014-06-21 00:00:00","0","COLSALUD","","","","","","","","","","","","","2014-06-21 20:14:22","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("128","0","0","CC","665201245","PILAR OMAÃ‘A","NEW YORK","F","5869900","31058452","PILAR@GMAIL.COM","DISEÃ‘O DE MODAS","DESIGN WOMAN","2014-06-21 00:00:00","0","COOMEVA","","","","","","","","","","","","","2014-06-21 20:38:40","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("129","0","0","CC","88779963","FELIPE MONSALVE","BOGOTA","M","123456","3205896454","felipe@hotmail.com","ingeniero PETROLEO","ECOPETROL","2014-06-22 00:00:00","0","SALUDCOOP","","","","","","","","","","","","","2014-06-22 21:44:41","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("131","0","0","CC","885124963","HECTOR ANDRADE","CUCUTA","M","57852360","3102590247","HECTOR@HOTMAIL.COM","ING INDUSTRIAL","SALUDCOOP","2014-06-22 00:00:00","0","SALUDCOOP","","HECTOR ANDRADE","LOLA PEREZ","ALERGIA","","","","","","","","","2014-06-22 21:55:39","","","0","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("163","0","0","CC","65212457","ALBERTO PINEDA","BOGOTA","M","5789521","3105482014","ALBERTO@HOTMAIL.COM","OBRERO","NINGUNA","1980-06-17 00:00:00","0","COMPARTA","","","","","","","","","","","","","2014-06-25 02:25:03","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("161","94","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","9001","MEDICINA GENERAL","","2014-06-25 01:30:47","OBV CONSULTA");
INSERT INTO cliente VALUES("162","120","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","882569324","CECILIA PEREZ","9001","GENERAL","","2014-06-25 01:32:05","OBV GENERAL");
INSERT INTO cliente VALUES("160","0","94","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","9001","MEDICINA GENERAL","2014-06-30","09:25","OB CITA","SI","","","0","","","","");
INSERT INTO cliente VALUES("164","121","0","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","","","","","","","","","889632547","JULIO CESAR MONTAÃ‘ES","9005","LABORATORIO","","2014-06-25 02:39:28","OBV");
INSERT INTO cliente VALUES("165","0","121","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","889632547","JULIO CESAR MONTAÃ‘ES","9001","MEDICINA GENERAL","2014-06-30","22:25","OBV","","","","0","","","","");
INSERT INTO cliente VALUES("166","0","121","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","889632547","JULIO CESAR MONTAÃ‘ES","9005","LABORATORIO","2014-06-30","11:25","OBV","","","","0","","","","");
INSERT INTO cliente VALUES("167","0","121","","","","","","","","","","","0000-00-00 00:00:00","0","","","","","","","","","","","","","","","889632547","JULIO CESAR MONTAÃ‘ES","9006","ODONTOLOGIA","2014-06-30","15:30","","","","","0","","","","");
INSERT INTO cliente VALUES("172","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","0","39141Consulta ambulatoria de medicina general","","2014-07-06 16:38:08","fghdtgyhdfgh");
INSERT INTO cliente VALUES("173","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","0","Consulta ambulatoria de medicina general","","2014-07-06 16:38:48","");
INSERT INTO cliente VALUES("174","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","0","Consulta ambulatoria de medicina general","","2014-07-06 16:39:53","");
INSERT INTO cliente VALUES("175","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","0","Consulta ambulatoria de medicina general","","2014-07-06 16:41:20","");
INSERT INTO cliente VALUES("176","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","0","Consulta ambulatoria de medicina general","","2014-07-06 16:42:22","5rq34532452345");
INSERT INTO cliente VALUES("177","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","0","Consulta ambulatoria de medicina general","","2014-07-06 16:43:08","w562346");
INSERT INTO cliente VALUES("178","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","","2014-07-06 16:44:26","3245234523");
INSERT INTO cliente VALUES("179","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39145","39145Consulta de urgencias","","2014-07-08 03:39:02","");
INSERT INTO cliente VALUES("180","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","","2014-07-08 03:40:53","hsfdhghdfh");
INSERT INTO cliente VALUES("181","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","","2014-07-08 03:41:46","");
INSERT INTO cliente VALUES("182","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","","2014-07-08 03:43:41","");
INSERT INTO cliente VALUES("183","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","","2014-07-08 03:45:07","");
INSERT INTO cliente VALUES("184","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141-Consulta ambulatoria de medicina general","","2014-07-08 03:49:03","");
INSERT INTO cliente VALUES("188","0","0","CC","885544","test foto","","","","3154","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","2014-08-16 23:49:15","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("189","0","0","CC","885544","test foto","","","","3154","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","2014-08-16 23:49:15","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("191","0","0","CC","456456456","dfsghdgsdg","","","","7575","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","2014-08-16 23:54:34","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("220","0","0","CC","3463456346","TAB","4563426346","M","5464256","3245632456","","DFSGADSFG","RTYRWTY","0000-00-00 00:00:00","NaN","WETRYRWYR","","","","","","","","","","","","","2015-01-15 12:16:11","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("199","0","195","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","45665","uhydf","39141Consulta ambulatoria de medicina general","39141Consulta ambulatoria de medicina general","","","","","","","0","","","","");
INSERT INTO cliente VALUES("200","0","198","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","4574","klklkl","39141Consulta ambulatoria de medicina general","39141Consulta ambulatoria de medicina general","2014-08-14","","tujr","","","","0","","","","");
INSERT INTO cliente VALUES("201","0","94","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39145Consulta de urgencias","","","","etertert","","","","0","","","","");
INSERT INTO cliente VALUES("202","0","120","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","882569324","CECILIA PEREZ","39141Consulta ambulatoria de medicina general","39141Consulta ambulatoria de medicina general","2014-08-05","14:02","sdfasfasdf","","","","0","","","","");
INSERT INTO cliente VALUES("203","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","Exodoncia","2014-08-19 21:16:30","ultima modificacion");
INSERT INTO cliente VALUES("204","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","Exodoncia quirÃºrgica","2014-08-19 21:19:33","ul");
INSERT INTO cliente VALUES("205","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","Exodoncia quirÃºrgica","2014-08-19 21:21:01","sdfsdfsdfsfv");
INSERT INTO cliente VALUES("206","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39145","39145Consulta de urgencias","Diagnostico","2014-08-19 21:21:55","sdfsdfdf");
INSERT INTO cliente VALUES("207","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","Exodoncia","2014-08-19 21:30:45","yeah");
INSERT INTO cliente VALUES("208","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","Exodoncia","2014-08-19 23:09:28","sdfsadfasdf");
INSERT INTO cliente VALUES("209","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","Exodoncia","2014-08-19 23:10:18","sdfasdfasdf");
INSERT INTO cliente VALUES("210","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","Exodoncia quirÃºrgica","2014-08-27 18:49:26","dfsdf");
INSERT INTO cliente VALUES("211","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","39141Consulta ambulatoria de medicina general","Exodoncia quirÃºrgica","2014-08-27 18:52:19","safsdfasdf");
INSERT INTO cliente VALUES("212","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39141","Consultaambulatoriademedicinageneral","","2014-08-27 18:53:59","");
INSERT INTO cliente VALUES("213","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","890304","      CONSULTA DE  CONTROL O SEGUIMIENTO DE PROGRAMA POR ODONTOLOGIA ESPECIALIZADA","SDFDSFASDF","2014-08-27 18:55:16","");
INSERT INTO cliente VALUES("214","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39145","     Consulta de urgencias","","2014-08-27 18:56:46","");
INSERT INTO cliente VALUES("215","0","94","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","890204CONSULTA DE PRIMERA VEZ POR ODONTOLOGIA ESPECIALIZADA","      CONSULTA DE PRIMERA VEZ POR ODONTOLOGIA ESPECIALIZADA","2014-08-12","02:01","sdfasdf","","","","0","","","","");
INSERT INTO cliente VALUES("216","0","94","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","890204                                                     ","      CONSULTA DE PRIMERA VEZ POR ODONTOLOGIA ESPECIALIZADA","2014-08-13","13:00","SDFASDFASDF","","","","0","","","","");
INSERT INTO cliente VALUES("217","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","893105","      MASCARA FACIAL  DIAGNOSTICA","","2014-08-27 12:21:19","facial");
INSERT INTO cliente VALUES("218","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","893103","      EVALUACION Y MEDICION  ORTODONTICA Y ORTOPEDICA ORAL","Exodoncia","2014-09-07 14:56:07","");
INSERT INTO cliente VALUES("219","0","94","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","36101                          ","     EXAMEN CLINICO PRIMERA VEZ","2014-09-10","17:02","tsgtsdegt","","","","0","","","","");
INSERT INTO cliente VALUES("222","0","0","CC","34634256","TAB TAB","SDFGHSDGFDS","M","","34624625","","","DSFGDASFG","2007-06-12 00:00:00","7","DFGDSFG","","","","","","","","","","","","","2015-01-15 12:37:02","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("224","0","0","CC","564564","YURITZA","CUCUTA","F","5867799","31124566775","LHPM16@HOTMAIL.COM","SISTEMAS","COOMEVA","2005-06-14 00:00:00","9","COOMEVA","","","","","","","","","","","","","2015-01-15 12:42:06","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("225","0","0","CC","889900","LOG APELLIDO","CALIFORNIA","M","3453245","32453125","lhpm16@hotmail.com","TECNOLOGO EN SISTEMAS","INDEPENDIENTE","1998-07-15 00:00:00","16","COOMEVA","","","","","","","","","","","","","2015-01-20 15:54:50","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("226","0","0","CC","4563464","LOG2 APELLIDO","CUCUTA","M","4564256","2456246","lhpm16@hotmail.com","TECNOLOGO EN SISTEMAS","SALUDCOOP","2007-06-20 00:00:00","7","SALUDCOOP","","","","","","","","","","","","","2015-01-20 16:00:50","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("227","0","0","CC","3452345","ASD","ASDGASDGADSG","M","445435","35345","lhpm16@hotmail.com","ASDFASDF","CONSTRUCOL","0000-00-00 00:00:00","0","COOmeva","","","","","","","","","","","","","2015-01-20 16:05:13","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("229","0","0","CC","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","cucuta","M","554466","667788","LHPM16@HOTMAIL.COM","TECNOLOGO EN SISTEMAS","CONSTRUCOL","2014-12-31 00:00:00","0","COOmeva","","","","","","","","","","","","","2015-01-20 16:11:29","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("230","0","0","CC","123","log4","londres","M","334455","32452354325","LHPM16@HOTMAIL.COM","COMERCIANTE","","1932-06-21 00:00:00","81","","","LOG1","LOG2","MEDICA","SDFADSFadsf","ninguno morbico","n.a","ningun medicamento","polvo","ninguno","ninguno","amarilla","2015-01-20 16:22:39","","","","","","","","","","","0","","","","");
INSERT INTO cliente VALUES("231","94","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","39145","     Consulta de urgencias","Sellante presente","2015-01-20 16:34:10","sdfasdfasdf");
INSERT INTO cliente VALUES("232","120","0","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","","","","","","","","","882569324","CECILIA FLOREZ","39145","     Consulta de urgencias","Exodoncia","2015-01-20 16:35:17","sadgasdfasdf");
INSERT INTO cliente VALUES("233","0","94","","","","","","","","","","","0000-00-00 00:00:00","","","","","","","","","","","","","","","","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","36101                          ","     EXAMEN CLINICO PRIMERA VEZ","2015-01-06","12:45","","","","","0","","","","");



DROP TABLE IF EXISTS diagnosticos;

CREATE TABLE `diagnosticos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` int(11) NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;




DROP TABLE IF EXISTS foto;

CREATE TABLE `foto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_foto` int(11) NOT NULL,
  `foto` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO foto VALUES("119","94","94");
INSERT INTO foto VALUES("120","94","94");
INSERT INTO foto VALUES("121","94","94");
INSERT INTO foto VALUES("122","94","94");
INSERT INTO foto VALUES("123","94","94");
INSERT INTO foto VALUES("124","94","94");
INSERT INTO foto VALUES("125","120","120");
INSERT INTO foto VALUES("126","120","120");
INSERT INTO foto VALUES("127","94","94");
INSERT INTO foto VALUES("128","94","94");
INSERT INTO foto VALUES("129","94","94");
INSERT INTO foto VALUES("130","94","94");



DROP TABLE IF EXISTS frases;

CREATE TABLE `frases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `frase` text COLLATE utf8_spanish_ci NOT NULL,
  `autor` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO frases VALUES("1","Es tan culpable quien comete un crimen como el que lo calla.","");
INSERT INTO frases VALUES("2","Soy capaz de controlar las sombras, pero no luchar en contra de un eclipse.","");
INSERT INTO frases VALUES("3","Los fenómenos que parecen acontecimientos malos, dolorosos, desagradables, son estados transitorios de algo que está mejorando.","");
INSERT INTO frases VALUES("4","Con dinero se puede comprar la cáscara de todo, pero no el grano.","");
INSERT INTO frases VALUES("5","A cada lágrima responde con una bella y grande sonrrisa.","");
INSERT INTO frases VALUES("6","En mi casa tengo un canario que canta cuando te nombro. Mira si te nombro veces que hasta el canario está ronco.","");
INSERT INTO frases VALUES("7","Lo bueno de los años es que curan heridas, lo malo de los besos es que causan adicciòn.","");
INSERT INTO frases VALUES("8","El rió vuelve a su cauce, la golondrina, a su nido, sólo el corazón no vuelve a tener la ilusión que ha perdido.","");
INSERT INTO frases VALUES("9","Recuerda siempre que eres único... Exactamente igual que todos los demás.","");
INSERT INTO frases VALUES("10","Anoche pedí a un ángel que fuese a protegerte mientras dormías. Al rato volvió y le pregunté por qué había vuelto. Una ángel no necesita que otro lo proteja, me respondió.","");
INSERT INTO frases VALUES("11","Siempre habrá gente que te lastime, así que lo que tienes que hacer, es seguir confiando, y sólo ser más cuidadoso en quien confías por segunda vez.","");
INSERT INTO frases VALUES("12","No te fijes en la letra, ni tampoco en la escritura, fíjate en mi que te quiero con locura!.","");
INSERT INTO frases VALUES("13","Hacen falta 40 músculos para fruncir el ceño,pero tan sólo 15 para sonreir.","");
INSERT INTO frases VALUES("14","Lo que hace disfrutar de una relación son los intereses comunes; lo que la hace interesante son las pequeñas diferencias.","");
INSERT INTO frases VALUES("15","Si te propones desempeñar un papel superior a tus fuerzas, no sólo lo harás mal, sino que dejarás de desempeñar aquél que en realidad te corresponde.","");
INSERT INTO frases VALUES("16","Lo importante en la vida no es la riqueza o la fortuna, lo que mas vale es la amistad que siempre perdura.","");
INSERT INTO frases VALUES("17","Los sueños nunca desaparecen siempre que las personas no los abandonan.","");
INSERT INTO frases VALUES("18","No ande delante de mí, tal vez no le siga. No ande detrás de mi, tal vez no le sepa dirigir. Simplemente ande a mi lado, y ser mi amigo.","");
INSERT INTO frases VALUES("19","Una mentira puede correr 6 veces por el mundo antes de que la verdad haya tenido tiempo para ponerse los pantalones.","");
INSERT INTO frases VALUES("20","Los jóvenes de hoy aman el lujo, tienen manías y desprecian la autoridad. Responden a sus padres, cruzan las piernas y tiranizan a sus maestros.","");
INSERT INTO frases VALUES("21","Siempre hay un poco de locura en el amor, pero siempre hay un poco de razón en la locura.","");
INSERT INTO frases VALUES("22","Si no aprendes a confiar en los demás, difícilmente lograrás que ellos confían en ti.","");
INSERT INTO frases VALUES("23","El amor es sabiduría en los locos, y locura en los sabios.","");
INSERT INTO frases VALUES("24","El tiempo es cuestión de tiempo, la vida es cuestión de vida, la vida dura un momento, el tiempo toda la vida.","");
INSERT INTO frases VALUES("25","Felicidad es el momento que no tiene prisa y que no quieres dejar ir jamas.","");
INSERT INTO frases VALUES("26","El respeto es como la sonrisa, no cuesta nada y a todos gusta.","");
INSERT INTO frases VALUES("27","¿Qué es la vida? Un frenesí ¿Qué es la vida? Una ilusión, una sombra, una ficción, y el mayor bien es pequeño; que toda la vida es sueño, y los sueños, sueños son.","");
INSERT INTO frases VALUES("28","Los ojos son las puertas del alma... no los cubras.","");
INSERT INTO frases VALUES("29","Podemos tener todos los medios de comunicación del mundo, pero nada, absolutamente nada, sustituye la mirada del ser humano.","");
INSERT INTO frases VALUES("30","No hay nada imposible, porque los sueños de ayer son las esperanzas de hoy y pueden convertirse en realidad mañana.","");
INSERT INTO frases VALUES("31","El amistad mejora la felicidad y disminuye la tristeza, porque a través del amistad, se duplican las alegrías y se dividen los problemas.","");
INSERT INTO frases VALUES("32","En la vida todos tenemos un secreto inconfesable, un arrepentimiento irreversible, un sueño inalcanzable y un amor inolvidable.","");
INSERT INTO frases VALUES("33","En la lucha entre el arroyo y la roca, siempre triunfa el arroyo... no porque sea más fuerte, sino porque persevera.","");
INSERT INTO frases VALUES("34","Las personas inteligentes son capaces de simplificar lo complejo; los tontos, en cambio, suelen complicar lo sencillo.","");
INSERT INTO frases VALUES("35","Si no aprendes a confiar en los demás, difícilmente lograrás que ellos confían en ti.","");
INSERT INTO frases VALUES("36","Duerme mas de la cuenta si eso hace que te despiertes con una sonrisa.","");
INSERT INTO frases VALUES("37","Nunca te detegas no mires hacia atras,solo adelante el q verdaderamente te quiere ira a tu lado.","");
INSERT INTO frases VALUES("38","La sonrisa es un puente de luz entre dos almas.","");
INSERT INTO frases VALUES("39","Puede que el amor no haga girar al mundo, pero debo admitir que hace que el viaje vale la pena.","");
INSERT INTO frases VALUES("40","No se puede separar la paz de la libertad, porque nadie puede estar en paz consigo mismo si no es libre","");



DROP TABLE IF EXISTS laboratorio;

CREATE TABLE `laboratorio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `documento` text COLLATE utf8_spanish_ci NOT NULL,
  `nombres` text COLLATE utf8_spanish_ci NOT NULL,
  `sexo` text COLLATE utf8_spanish_ci NOT NULL,
  `edad` text COLLATE utf8_spanish_ci NOT NULL,
  `ciudad` text COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text COLLATE utf8_spanish_ci NOT NULL,
  `celular` text COLLATE utf8_spanish_ci NOT NULL,
  `hemoglobina` text COLLATE utf8_spanish_ci NOT NULL,
  `hematocrito` text COLLATE utf8_spanish_ci NOT NULL,
  `globulos_blancos` text COLLATE utf8_spanish_ci NOT NULL,
  `id_l` int(11) NOT NULL,
  `gram` text COLLATE utf8_spanish_ci NOT NULL,
  `koh` text COLLATE utf8_spanish_ci NOT NULL,
  `otros_micro` text COLLATE utf8_spanish_ci NOT NULL,
  `trichonomas` text COLLATE utf8_spanish_ci NOT NULL,
  `levaduras_mi` text COLLATE utf8_spanish_ci NOT NULL,
  `bacterias_2` text COLLATE utf8_spanish_ci NOT NULL,
  `hematies_3` text COLLATE utf8_spanish_ci NOT NULL,
  `leucocitos_mi` text COLLATE utf8_spanish_ci NOT NULL,
  `celulas` text COLLATE utf8_spanish_ci NOT NULL,
  `ph_mi` text COLLATE utf8_spanish_ci NOT NULL,
  `aspecto_2` text COLLATE utf8_spanish_ci NOT NULL,
  `color_mi` text COLLATE utf8_spanish_ci NOT NULL,
  `hepatitis_b` text COLLATE utf8_spanish_ci NOT NULL,
  `vih` text COLLATE utf8_spanish_ci NOT NULL,
  `prueba_embarazo` text COLLATE utf8_spanish_ci NOT NULL,
  `vdlr` text COLLATE utf8_spanish_ci NOT NULL,
  `pcr` text COLLATE utf8_spanish_ci NOT NULL,
  `astos` text COLLATE utf8_spanish_ci NOT NULL,
  `psa` text COLLATE utf8_spanish_ci NOT NULL,
  `fr` text COLLATE utf8_spanish_ci NOT NULL,
  `otros_co` text COLLATE utf8_spanish_ci NOT NULL,
  `leucocitos_co` text COLLATE utf8_spanish_ci NOT NULL,
  `moco_co` text COLLATE utf8_spanish_ci NOT NULL,
  `grasas` text COLLATE utf8_spanish_ci NOT NULL,
  `hematies_2` text COLLATE utf8_spanish_ci NOT NULL,
  `almidones` text COLLATE utf8_spanish_ci NOT NULL,
  `levaduras` text COLLATE utf8_spanish_ci NOT NULL,
  `flora_bacteriana` text COLLATE utf8_spanish_ci NOT NULL,
  `parasitos` text COLLATE utf8_spanish_ci NOT NULL,
  `azucares_reductores` text COLLATE utf8_spanish_ci NOT NULL,
  `sangre_oculta` text COLLATE utf8_spanish_ci NOT NULL,
  `consistencia` text COLLATE utf8_spanish_ci NOT NULL,
  `color_co` text COLLATE utf8_spanish_ci NOT NULL,
  `otros_mi` text COLLATE utf8_spanish_ci NOT NULL,
  `moco` text COLLATE utf8_spanish_ci NOT NULL,
  `cristales` text COLLATE utf8_spanish_ci NOT NULL,
  `cilindros` text COLLATE utf8_spanish_ci NOT NULL,
  `cel_epiteliales` text COLLATE utf8_spanish_ci NOT NULL,
  `hematies` text COLLATE utf8_spanish_ci NOT NULL,
  `piocitos` text COLLATE utf8_spanish_ci NOT NULL,
  `bacterias` text COLLATE utf8_spanish_ci NOT NULL,
  `proteinas` text COLLATE utf8_spanish_ci NOT NULL,
  `sangre` text COLLATE utf8_spanish_ci NOT NULL,
  `glucosa` text COLLATE utf8_spanish_ci NOT NULL,
  `urobilinogeno` text COLLATE utf8_spanish_ci NOT NULL,
  `bilirrubina` text COLLATE utf8_spanish_ci NOT NULL,
  `nitritos` text COLLATE utf8_spanish_ci NOT NULL,
  `cetonas` text COLLATE utf8_spanish_ci NOT NULL,
  `leucocitos` text COLLATE utf8_spanish_ci NOT NULL,
  `densidad` text COLLATE utf8_spanish_ci NOT NULL,
  `ph` text COLLATE utf8_spanish_ci NOT NULL,
  `aspecto` text COLLATE utf8_spanish_ci NOT NULL,
  `color` text COLLATE utf8_spanish_ci NOT NULL,
  `otros` text COLLATE utf8_spanish_ci NOT NULL,
  `ast` text COLLATE utf8_spanish_ci NOT NULL,
  `alt` text COLLATE utf8_spanish_ci NOT NULL,
  `bilirrubina_total` text COLLATE utf8_spanish_ci NOT NULL,
  `bilirrubina_dta` text COLLATE utf8_spanish_ci NOT NULL,
  `creatinina` text COLLATE utf8_spanish_ci NOT NULL,
  `bun` text COLLATE utf8_spanish_ci NOT NULL,
  `acido_urico` text COLLATE utf8_spanish_ci NOT NULL,
  `trigliceridos` text COLLATE utf8_spanish_ci NOT NULL,
  `colesterol_ldl` text COLLATE utf8_spanish_ci NOT NULL,
  `colesterol_hdl` text COLLATE utf8_spanish_ci NOT NULL,
  `colesterol_total` text COLLATE utf8_spanish_ci NOT NULL,
  `glicemia_post` text COLLATE utf8_spanish_ci NOT NULL,
  `glicemia_basal` text COLLATE utf8_spanish_ci NOT NULL,
  `esp` text COLLATE utf8_spanish_ci NOT NULL,
  `vsg` text COLLATE utf8_spanish_ci NOT NULL,
  `blastos` text COLLATE utf8_spanish_ci NOT NULL,
  `plaquetas` text COLLATE utf8_spanish_ci NOT NULL,
  `monocitos` text COLLATE utf8_spanish_ci NOT NULL,
  `linfocitos` text COLLATE utf8_spanish_ci NOT NULL,
  `basofilos` text COLLATE utf8_spanish_ci NOT NULL,
  `neutrofilos` text COLLATE utf8_spanish_ci NOT NULL,
  `fecha_laboratorio` text COLLATE utf8_spanish_ci NOT NULL,
  `eosinofilos` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO laboratorio VALUES("2","882569324","CECILIA PEREZ","M","0","CHINACOTA","5869215","3158590124","","","","120","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","2014-07-16 17:37:12","");
INSERT INTO laboratorio VALUES("4","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","M","0","CHINACOTA","123456","3156980335","CHINACOTA","12345","BLANCOS","94","gramm","kohh","74","73","72","71","70","69","68","67","66","65","","63","62","61","60","59","58","57","56","55","54","53","52","","50","49","","47","46","45","44","43","42","41","40","39","38","37","36","35","34","33","32","31","NITRITOS","29","28","27","","25","24","","22","21","20","19","18","17","16","[object HTMLInputElement]","3","13","TTTTT","GLICEMIA POST","10","","8","7","6","5","4","3","1","100","2");
INSERT INTO laboratorio VALUES("6","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","M","0","CUCUTA","123456","3156980335","1","2","3","94","79","78","77","76","75","74","73","72","71","70","69","68","67","66","65","64","63","62","61","60","59","58","57","56","55","54","53","52","51","50","49","48","47","46","45","44","43","42","41","40","39","38","37","36","35","34","33","32","31","30","29","28","27","26","25","24","23","22","21","20","19","18","17","16","[object HTMLInputElement]","3","13","12","11","10","9","8","7","6","4","2014-07-17 15:10:05","5");
INSERT INTO laboratorio VALUES("7","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","M","0","CUCUTA","123456","3156980335","1","2","3","94","79","78","77","76","75","74","73","72","71","70","69","68","67","66","65","64","63","62","61","60","59","58","57","56","55","54","53","52","51","50","49","48","47","46","45","44","43","42","41","40","39","38","37","36","35","34","33","32","31","30","29","28","27","26","25","24","23","22","21","20","19","18","17","16","15","14","13","12","11","10","9","8","7","6","4","2014-07-17 17:42:22","5");
INSERT INTO laboratorio VALUES("8","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","M","0","CUCUTA","123456","3156980335","","","","94","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","2014-08-12 18:21:27","");
INSERT INTO laboratorio VALUES("9","88251837","LUIS HERNANDO PATIÃ‘O MACHADO","M","37","CHINACOTA","123456","3156980335","OK","OK","","94","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","","2015-01-16 11:32:18","");



DROP TABLE IF EXISTS odonto;

CREATE TABLE `odonto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_l` int(11) NOT NULL,
  `pieza18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza55` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b55` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x55` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c55` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d55` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag55` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza54` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b54` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x54` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c54` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d54` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag54` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza53` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b53` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x53` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c53` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d53` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag53` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza52` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b52` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x52` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c52` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d52` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag52` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza51` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b51` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x51` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c51` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d51` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag51` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza61` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b61` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x61` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c61` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d61` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag61` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza62` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b62` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x62` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c62` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d62` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag62` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza63` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b63` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x63` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c63` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d63` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag63` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza64` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b64` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x64` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c64` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d64` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag64` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza65` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b65` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x65` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c65` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d65` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag65` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza85` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b85` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x85` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c85` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d85` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag85` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza84` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b84` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x84` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c84` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d84` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag84` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza83` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b83` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x83` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c83` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d83` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag83` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza82` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b82` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x82` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c82` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d82` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag82` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza81` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b81` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x81` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c81` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d81` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag81` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza71` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b71` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x71` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c71` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d71` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag71` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza72` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b72` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x72` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c72` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d72` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag72` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza73` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b73` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x73` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c73` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d73` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag73` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza74` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b74` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x74` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c74` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d74` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag74` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `pieza75` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `b75` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `x75` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `c75` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `d75` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diag75` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `observaciones` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `tratamiento` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag18` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag17` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag16` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag15` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag14` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag13` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag12` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag11` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag21` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag22` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag23` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag24` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag25` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag26` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag27` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag28` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag48` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag47` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag46` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag45` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag44` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag43` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag42` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag41` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag31` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag32` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag33` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag34` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag35` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag36` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag37` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placapieza38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placab38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placax38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placac38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placad38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `placadiag38` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `consentimiento` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `antecedentes` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `alergias` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `farmacos` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `habitos` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `ta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_spanish_ci NOT NULL,
  `peso` text CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `examen` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `diagnostico` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `cepillado` text CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `riesgo` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `sedadental` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `fecha_odontologia` text CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `nombres` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `edad` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `sexo` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `telefono` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `celular` text CHARACTER SET utf16 COLLATE utf16_spanish_ci NOT NULL,
  `ciudad` text CHARACTER SET utf32 COLLATE utf32_spanish_ci NOT NULL,
  `tipo_doc` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `documento` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO odonto VALUES("1","94","#ff0000","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","27-08-2014 18:23:53","LUIS HERNANDO PATIÃ‘O MACHADO","0","M","123456","3156980335","CHINACOTA","CC","88251837");
INSERT INTO odonto VALUES("2","94","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#fcf738","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","12-11-2014 19:45:35","LUIS HERNANDO PATIÃ‘O MACHADO","0","M","123456","3156980335","CHINACOTA","CC","88251837");
INSERT INTO odonto VALUES("3","120","#ff0000","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","12-12-2014 11:59:58","CECILIA PEREZ","0","M","5869215","3158590124","CHINACOTA","CC","882569324");
INSERT INTO odonto VALUES("4","94","#d70000","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","12-12-2014 13:40:35","LUIS HERNANDO PATIÃ‘O MACHADO","0","M","123456","3156980335","CHINACOTA","CC","88251837");
INSERT INTO odonto VALUES("5","94","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#ff8000","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","16-12-2014 19:42:50","LUIS HERNANDO PATIÃ‘O MACHADO","0","M","123456","3156980335","CHINACOTA","CC","88251837");
INSERT INTO odonto VALUES("6","94","#ff0000","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","16-12-2014 19:46:02","LUIS HERNANDO PATIÃ‘O MACHADO","0","M","123456","3156980335","CHINACOTA","CC","88251837");
INSERT INTO odonto VALUES("7","94","#ff0000","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","16-12-2014 19:49:42","LUIS HERNANDO PATIÃ‘O MACHADO","0","M","123456","3156980335","CHINACOTA","CC","88251837");
INSERT INTO odonto VALUES("8","94","#ff0000","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","16-12-2014 19:51:01","LUIS HERNANDO PATIÃ‘O MACHADO","0","M","123456","3156980335","CHINACOTA","CC","88251837");
INSERT INTO odonto VALUES("9","94","#ff0000","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","#00d7d7","","","","","","","","","","","","","16-12-2014 19:52:14","LUIS HERNANDO PATIÃ‘O MACHADO","0","M","123456","3156980335","CHINACOTA","CC","88251837");



DROP TABLE IF EXISTS soat;

CREATE TABLE `soat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo` text COLLATE utf8_spanish_ci NOT NULL,
  `nombre` text COLLATE utf8_spanish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

INSERT INTO soat VALUES("1","39141","Consulta ambulatoria de medicina general");
INSERT INTO soat VALUES("2","39145","Consulta de urgencias");
INSERT INTO soat VALUES("3","36100","Consulta especializada");
INSERT INTO soat VALUES("4","36101","EXAMEN CLINICO PRIMERA VEZ");
INSERT INTO soat VALUES("5","890203","CONSULTA DE PRIMERA VEZ POR ODONTOLOGIA GENERAL");
INSERT INTO soat VALUES("6","890204","CONSULTA DE PRIMERA VEZ POR ODONTOLOGIA ESPECIALIZADA");
INSERT INTO soat VALUES("7","890303","CONSULTA DE CONTROL O DE SEGUIMIENTO DE PROGRAMA POR ODONTOLOGIA GENERAL");
INSERT INTO soat VALUES("8","890304","CONSULTA DE  CONTROL O SEGUIMIENTO DE PROGRAMA POR ODONTOLOGIA ESPECIALIZADA");
INSERT INTO soat VALUES("9","893100","EXAMEN  O RECONOCIMIENTO DE MUCOSA ORAL Y PERIODONTAL");
INSERT INTO soat VALUES("10","893101","IMPRESION DE ARCO DENTARIO SUPERIOR O  INFERIOR, CON MODELO DE ESTUDIO Y CONCEPTO");
INSERT INTO soat VALUES("11","893102","FOTOGRAFIA CLINICA EXTRAORAL, INTRAORAL , FRONTAL O LATERAL");
INSERT INTO soat VALUES("12","893103","EVALUACION Y MEDICION  ORTODONTICA Y ORTOPEDICA ORAL");
INSERT INTO soat VALUES("13","893104","ESTUDIO DE OCLUSION Y  ARTICULACION TEMPOROMANDIBULAR");
INSERT INTO soat VALUES("14","893105","MASCARA FACIAL  DIAGNOSTICA");
INSERT INTO soat VALUES("15","893109","ANESTESIA LOCAL NO ASOCIADA CON OTROS PROCEDIMIENTOS");
INSERT INTO soat VALUES("16","890703","CONSULTA DE URGENCIAS, POR ODONTOLOGIA GENERAL");
INSERT INTO soat VALUES("17","890704","CONSULTA DE URGENCIAS, POR ODONTOLOGIA ESPECIALIZADA");
INSERT INTO soat VALUES("18","271100","DRENAJE DE ABSCESO DE PALADAR");



