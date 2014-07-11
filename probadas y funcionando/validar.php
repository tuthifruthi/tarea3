<?php
include 'Conexion_bd.php';
$conn = new Conexion_bd ();
$rol = $_POST ['rol'];
$pass = $_POST ['password'];

session_start ();

if ($rol != "" && $pass != "") {
	// code...
	$sql = "SELECT * FROM \"Alumnos\" where \"rol\"='" . $rol . "' AND \"contrasena\"='".$pass."'";
	$consult = $conn->consulta ( $sql );
	$row = $consult;
	if ($row) {
		$_SESSION ["$rol"] = $row ["rol"];
		$sql3 = "SELECT \"id_coordinador\" FROM \"Coordinadores\" WHERE \"rol\"='" . $row["rol"] . "'";
		$sql4 = "SELECT \"id_colaborador\" FROM \"Colaboradores\" WHERE \"rol\"='" . $row["rol"] . "'";
		$consult3 = $conn->consulta ( $sql4 );
		$consult2 = $conn->consulta ( $sql3 );
		if ($consult2) {
			// s coordinador, yay.
			
			header ( "Location:coordgeneral.php" );
		}
		else if ($consult3) {
			// s colaborador, yay.
			
			header ( "Location:menu_colab.php" );
		} 
		else {
			
			// s postulante
			header ( "Location:menu_postu.php" );
		}
	} 
	else {
		
		echo "datos mal ingresados o contraseña invalida, intente otra vez";
	}
}
else{
	echo "ingrese todos los datos";
}
?>