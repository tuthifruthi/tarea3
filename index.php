<html>
<style type="text/css">
<?php 
  include("Conexion_bd.php");
  $conn= new Conexion_bd();

 ?>

body p {
	font-family: Verdana, Geneva, sans-serif;
}
.a {
	font-family: Verdana, Geneva, sans-serif;
}
</style>

<body>
<title>Bienvenido</title>
<big class="a">Bienvenido al JIM</big>
<br>&nbsp;</br>

  

<form method="post" action="validar.php">
  <p>ROL USM:
    <input type="text" name="rol"><br> <!-- debe consultar por el rol, ya que es clave primaria -->
    Contrasena: 
    <input type="password" name="password">
  </p>
  <p>
    <input name="login" type="submit" value="Ingresar">
  </p>
</form>
<p>Si quieres ser colaborador...
<form method= "post" action="postulacion.php">
  <input type="submit" value="Postula Aqui">
 </form> 
</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</body>
</html>