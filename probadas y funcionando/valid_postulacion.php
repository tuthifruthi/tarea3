<?php 	
	
 	 include("Conexion_bd.php");
  	$conn= new Conexion_bd();

	$nom = $_POST['name'];
	$rol = $_POST['rol'];
	$pass = $_POST['password'];
	$carr = $_POST["carrera"];
	$rut = $_POST['rut']; 
	$correo = $_POST['email'];
	$tele = $_POST['phonenumber'];
	$pre1 = $_POST['pref1'];
	$pre2 = $_POST['pref2'];
	$pre3 = $_POST['pref3'];
	
	if($rut != "" && $pass != "" && $nom != "" && $rol != "" && $correo != "" && $tele != ""){

		$sql= "INSERT INTO \"Alumnos\" VALUES ('".$rol."',1,'".$rut."','".$nom."','".$carr."','".$correo."','".$tele."','".$pass."')";
		$conn->consulta($sql);
		
		$sql1="SELECT \"id_area\" FROM \"Areas\" where \"nombre\"='".$pre1."'";
		$result=$conn->consulta($sql1);
		$idarea1=0;
		while ($row = pg_fetch_row($result)) {
			$idarea1=$row[0];
				
		}
		$sql1="SELECT \"id_area\" FROM \"Areas\" where \"nombre\"='".$pre2."'";
		$result=$conn->consulta($sql1);
		$idarea2=0;
		while ($row = pg_fetch_row($result)) {
			$idarea2=$row[0];
		
		}
		$sql1="SELECT \"id_area\" FROM \"Areas\" where \"nombre\"='".$pre3."'";
		$result=$conn->consulta($sql1);
		$idarea3=0;
		while ($row = pg_fetch_row($result)) {
			$idarea3=$row[0];
		
		}
		
		
		$sql5= "INSERT into \"Postulantes\" VALUES (1,'".$rol."')";
		$conn->consulta($sql5);

		$sql6= "SELECT \"id_postulante\" FROM \"Postulantes\" WHERE \"rol\"='".$rol."'";
		$result=$conn->consulta($sql6);
		while ($row = pg_fetch_row($result)) {
			$sql2="INSERT INTO \"Postulantes_area\" Values('".$idarea1."','".$row[0]."', 1, FALSE)";
			$conn->consulta($sql2);
			$sql2="INSERT INTO \"Postulantes_area\" Values('".$idarea2."','".$row[0]."', 2, FALSE)";
			$conn->consulta($sql2);
			$sql2="INSERT INTO \"Postulantes_area\" Values('".$idarea3."','".$row[0]."', 3, FALSE)";
			$conn->consulta($sql2);
		}
		
		header ( "Location:index.php" );
	}

	else{

		echo "por favor rellene todos los campos";
	}


 ?>