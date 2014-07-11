<html> 
<head>
    <title>Menu Coordinador Area</title> 
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
        <br>&nbsp;</br>
        <a href = "profile.php"><input type="submit" value="Mis datos"></a>
        <br>&nbsp;</br>
        <a href = "noticias.php"><input type="submit" value="Noticias"></a>
        <br>&nbsp;</br>
        <a href = "postulantes.php"><input type="submit" value="Postulantes"></a> 
        <br>&nbsp;</br>
        <a href = "seleccionados.php"><input type="submit" value="Colaboradores Seleccionados"></a> 
        <br>&nbsp;</br>
        <a href = "logout.php"><input type="submit" value="Cerrar sesion"></a> 
</body>  
</html>