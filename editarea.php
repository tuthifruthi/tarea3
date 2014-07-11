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
<title>Editar Área</title>
<big class="a">EDITAR AREA</big>
<br>&nbsp;</br>

<?php 

 if(isset($_POST['edit'])) 
    {
      echo 'Edicion exitosa!.'; 
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
    <input name="edit" type="submit" value="Editar">
  </p>
</form>

</body>
</html>