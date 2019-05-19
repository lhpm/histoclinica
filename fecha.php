<?php
			  		  //Separa la fecha en día mes y año.
                      $fecha = "31/08/2014";
					  //echo $fecha;
                      list($dia, $mes, $anio) = explode("/",$fecha);

					  $fecha_actual = date("d/m/Y");
					  //echo $fecha_actual;
                      list($dia_actual, $mes_actual, $anio_actual) = explode("/",$fecha_actual);


					  //CALCULO DE DIAS
					  $segundos1 = mktime(0,0,0, (int) $dia,$mes,$anio);

					  $segundos2 = mktime(0,0,0,(int) $dia_actual,$mes_actual,$anio_actual);

					  //resto a una fecha la otra
                      $segundos_diferencia = $segundos2 - $segundos1; 
					  //convierto segundos en días
                      $dias_diferencia = $segundos_diferencia / (60 * 60 * 24);

                      //obtengo el valor absoulto de los días (quito el posible signo negativo)
                      $dias_diferencia = abs($dias_diferencia);
					  //quito los decimales a los días de diferencia
                      $dias_diferencia = floor($dias_diferencia);
					  $total_dias = $dias_diferencia;
			          //echo $total_dias;
				ECHO $total_dias;	  
			  ?>