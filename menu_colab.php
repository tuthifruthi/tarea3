<html>

<head>
    <title>Menu Colaborador</title>
</head> 

<body>
        <?php
        session_start();
        include("Conexion_bd.php");
        $dbconn= new Conexion_bd();
        $sql = 'SELECT "nombre" FROM "alumnos" WHERE "id_alumno"=\''.$_SESSION["id_alumno"].'\'';
        $result = dbconn->consulta($sql);
        $row = pg_fetch_array($result);
        echo "<h2>Bienvenido Colaborador ".$row[0]."</h2>";
        pg_free_result($result);
        dbconn->_destruct();
        ?>
<br>&nbsp;</br>

<a href="profile.php">Mis Datos</a>
<br>&nbsp;</br>
<a href="logout.php">Cerrar Sesion</a>


</body>
</html>