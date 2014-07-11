<html>
<style type="text/css">
body p {
	font-family: Verdana, Geneva, sans-serif;
}
.a {
	font-family: Verdana, Geneva, sans-serif;
}
</style>

<body>
<title>Postulacion</title>
<big class="a">POSTULACION</big>
<br>&nbsp;</br>

<?php 

 if(isset($_POST['postulacion'])) 
    {
      echo 'Postulacion exitosa!.'; 
      header("location:index.php");  
    }
?> 

<form method="post" action="valid_postulacion.php"> 
  <p>Nombre:
  <input type="text" name="name">
<br><br>
    ROL USM: <input type="text" name="rol">
<br><br>
    RUT: <input type="text" name="rut">
<br><br>
    Carrera: <input type="text" name="carrera">
<br><br>
    Correo electronico: 
    <input type="text" name="email">
<br><br>
    Telefono: 
    <input type="text" name="phonenumber">
<br><br>
    Contrasena: 
    <input type="text" name="password">
    <?php 
    include("Conexion_bd.php");
    $dbconn= new Conexion_bd();
    $sql = "SELECT \"nombre\" FROM \"Areas\"";
    $result = $dbconn->consulta($sql);
    $retorno=array();
    while ($row = pg_fetch_row($result)) {
    	array_push($retorno,$row[0]);
    }
    
    ?>
<br><br>
    Preferencia 1:
    <select name="pref1">
    <?php
    foreach ($retorno as &$valor) {
		echo "<option>".$valor."</option>";
    }
    ?>
    </select><br>
    Preferencia 2:
    <select name="pref2">
      <?php
      foreach ($retorno as &$valor) {
      	echo "<option>".$valor."</option>";
      }
    ?>
    </select>
  <br>
    Preferencia 3:
    <select name="pref3">
      <?php
      foreach ($retorno as &$valor) {
      	echo "<option>".$valor."</option>";
      }
    ?>
    </select>
  <br>
&nbsp;  </p>
  <p>
    <input name="postulacion" type="submit" value="Postular">
  </p>
</form>

</body>
</html>