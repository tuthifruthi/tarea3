<?php


	include("Conexion_bd.php");
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
			$_SESSION["id_alumno"] = $row["id_alumno"];
			
			
		}

		else{

			echo "datos mal ingresados, intente otra vez";
		}
	}

	else{

		echo "ingrese todos los datos";
	}

	



	 ?>