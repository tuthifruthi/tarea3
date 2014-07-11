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
<title>Áreas</title>
<big class="a">AREAS</big>
<br>&nbsp;</br>

<?php 

 if(isset($_POST['add'])) 
    {
      header("location:addarea.php");  
    }

 if(isset($_POST['edit'])) 
    {
      header("location:editarea.php");  
    }

 if(isset($_POST['eliminar'])) 
    { 
 
    }
?> 

<form method="post"> 
<table style="width:300px">
<tr>
  <td>Nombre Area</td>
  <td><input name="edit" type="submit" value="Editar"></td>
  <td><input name="eliminar" type="submit" value="Eliminar"></td>
</tr>
</table>
<br>&nbsp;</br>
  <input name="add" type="submit" value="Agregar Area">
</form>

</body>
</html>