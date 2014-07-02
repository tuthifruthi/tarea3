<?php
/**
 * Created by PhpStorm.
 * User: Mauricio
 * Date: 28-06-14
 * Time: 10:40 PM
 */

class Conexion_bd {


    var $host;
    var $bd;
    var $usuario;
    var $pass;
    var $link;

    //constructor

    function _construct($host='localhost', $bd='BD', $user='postgres', $pass='root'){

        $this->host=$host;
        $this->bd=$bd;
        $this->usuario=$user;
        $this->pass=$pass;
    }

    function consulta($sql){
        $datos_bd= "host='$this->host' dbname='$this->bd' user= '$this->usuario' password='$this->pass'";
        $link=pg_connect($datos_bd);
        $this->link= $link;
        $query = pg_query($link,$sql);

        if(!$query){

            echo $sql;
        }

        return $query;
    }

    function _destruct(){

        pg_close($this->link);
    }
}