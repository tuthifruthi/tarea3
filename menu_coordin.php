<!DOCTYPE html> 
<html> 
<head>
    <title>Menu Coordinador</title> 
</head> 
<body> 
        <?php
        session_start();
        include("Conexion_bd.php");
        $dbconn= new Conexion_bd();
        $sql = 'SELECT "nombre" FROM "alumnos" WHERE "id_alumno"=\''.$_SESSION["id_alumno"].'\'';
        $result = dbconn->consulta($sql);
        $row = pg_fetch_array($result);
        echo "<h2>Bienvenido Coordinador ".$row[0]."</h2>";
        pg_free_result($result);
        dbconn->_destruct();
        ?>
        <a href = "misdatos.php"><input type="submit" value="Ver mis datos"></a>
        <a href = "noticias.php"><input type="submit" value="Noticias"></a>
        <a href = "postulantes.php"><input type="submit" value="Postulantes"></a> 
        <a href = "colselec.php"><input type="submit" value="Colaboradores Seleccionados"></a> 
        <a href = "logout.php"><input type="submit" value="Salir"></a> 
</body>  
</html>