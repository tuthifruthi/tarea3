<?php


	include'Conexion_bd.php';
  	$conn= new Conexion_bd();
	$rol = $_POST['rol'];
	$pass = $_POST['password'];

	session_start();

	if ($rol!="" && $pass!="") {
		# code...
		$sql='SELECT * FROM "alumnos" where "rol"=\''.$rol.'\'';
		$consult=conn->consulta($sql);
		$row = pg_fetch_array($consult);
		if ($row["contrasena"]==$pass) {
			$_SESSION["rol"] = $row["rol"];
			$sql3 = 'SELECT "id_coordinador" FROM "coordinadores" WHERE "rol"=\''.$row["rol"].'\'';
			echo hola;
			$consult2= conn->consulta($sql3);
			if ($row2 = pg_fetch_array($consult2)) {
				#es coordinador, yay.

				header("Location:menu_coordin.php");
			}

			else if{

			$sql4 = 'SELECT "id_colaborador" FROM "colaboradores" WHERE "rol"=\''.$row["rol"].'\'';
			$consult3= conn->consulta($sql4);

				if ($row3 = pg_fetch_array($consult3)) {
					#es colaborador, yay.

					header("Location:menu_colab.php");
				}

				else{

					#es postulante
					header("Location:menu_postu.php");
				}

			}

			
		}

		else{

			echo "datos mal ingresados, intente otra vez";
		}
	}

	else{

		echo "ingrese todos los datos";
	}


	 ?>