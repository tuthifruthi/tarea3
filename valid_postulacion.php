<?php 	
	
 	 include("Conexion_bd.php");
  	$conn= new Conexion_bd();

	$nom = $_POST['nombre'];
	$rol = $_POST['rol'];
	$pass = $_POST['password'];
	$carr = $_POST["carrera"];
	$rut = $_POST['rut']; 
	$correo = $_POST['email'];
	$tele = $_POST['phonenumber'];
	$pre1 = $_POST['pref1'];
	$pre2 = $_POST['pref2'];
	$pre3 = $_POST['pref3'];
	if($rut != "" && $pass != "" && $nom != "" && $rol != "" && $correo != "" && $tele != "" && $pre1 != ""){

		$sql= 'INSERT into "alumnos" VALUES (\''.$rol.'\',\''.$rut.'\',\''.$nombre.'\',\''.$carr.'\',\''.$correo.'\',\''.$tele.'\',\''.$pass.'\',\'\')';
		$conn->consulta($sql);
		$sql2='SELECT "id_postulante" FROM "postulantes" where "rol"=\''.$rol.'\'';
		$result= $conn->consulta($sql2);
	$sql2='INSERT into "postulantes_area" Values(\''.$result.'\',\''.$result.'\')'

//inconsistencia con los datos
	}

	else{

		echo "por favor rellene todos los campos";
	}


 ?>

 <!--las claves de postulantes_area son foreign no primary-->