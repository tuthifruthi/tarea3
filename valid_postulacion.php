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

		$sql5= 'INSERT into "postulantes" Values(0,\''.$rol.'\',\'\')';
		$conn->consulta($sql5);

		$sql2='SELECT "id_postulante" FROM "postulantes" where "rol"=\''.$rol.'\'';
		$result= $conn->consulta($sql2);

		$sql3='SELECT "id_area" FROM "areas" where "nombre"=\''.$pre1.'\''; // sacar id area por nombre area
		$result2=$conn->consulta($sql3);

		$sql2='INSERT into "postulantes_area" Values(\''.$result2.'\',\''.$result.'\', 1, FALSE)';// añadir id area a postulantes area
		$conn->consulta($sql2);

		$sql4='SELECT "id_coordinador" FROM "coordinadores" where "id_area"=\''.$result2.'\''; // sacar id cordinador por id_area de tabla coordinadores
		$result3=$conn->consulta($sql4);

		$sql6='UPDATE "postulantes" SET "id_coordinador"= '$result3' where "id_postulante"=\''.$result.'\''; // añadir id_coordinador a tabla postulantes
		
		
	}

	else{

		echo "por favor rellene todos los campos";
	}


 ?>

 <!--las claves de postulantes_area son foreign no primary-->