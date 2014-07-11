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
<title>Agregar Área</title>
<big class="a">AGREGAR AREA</big>
<br>&nbsp;</br>

<?php 

 if(isset($_POST['add'])) 
    {
      echo 'El area se agrego exitosamente!.'; 
      header("location:areas.php");  
    }
?> 

<form method="post"> 
  <p>Nombre:
  <input type="text" name="name">
<br><br>
    Nº estimado colaboradores requeridos: <input type="text" name="colaboradores">
<br><br>
<br>&nbsp;</br>
    <input name="add" type="submit" value="Agregar">
  </p>
</form>

</body>
</html>