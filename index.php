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
<big class="a">Bienvenido al sistema</big>
<br>&nbsp;</br>

<?php 

 if(isset($_POST['login'])) <!-- si el botón de login fue presionado...-->
    {
      <!-- la redirección depende del tipo de usuario -->

      header("location:coordgeneral.php"); 
      header("location:coordarea.php");  
      header("location:postulante.php");  
    }
?> 
  

<form method="post" action="<?php
  $consulta="SELECT * FROM alumnos"
 ?>">
  <p>ROL USM:
    <input type="text" name="rol"><br> <!-- debe consultar por el rol, ya que es clave primaria -->
    Contrasena: 
    <input type="text" name="password">
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