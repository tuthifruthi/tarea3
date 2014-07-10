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

 if(isset($_POST['postulacion'])) <!-- si el botón de editar fue presionado...-->
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
<br><br>
    Preferencia 1:
    <select>
      <option value="pref1" name="pref1">Area</option>
    </select><br>
    Preferencia 2:
    <select>
      <option value="pref2" name="pref2" >Area</option>
    </select>
  <br>
    Preferencia 3:
    <select>
      <option value="pref3" name="pref3" >Area</option>
    </select>
  <br>
&nbsp;  </p>
  <p>
    <input name="postulacion" type="submit" value="Postular">
  </p>
</form>

</body>
</html>