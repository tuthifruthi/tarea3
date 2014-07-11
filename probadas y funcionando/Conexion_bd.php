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

    function __construct(){
    	$this->host="localhost";
    	$this->bd="postgres";
    	$this->user="postgres"; 
    	$this->pass="mariaj";
    }

    function consulta($sql){
        $datos_bd= "host='".$this->host."' dbname='".$this->bd."' user= '".$this->user."' password='".$this->pass."'";
        //echo $sql."<br>";
        $link=pg_connect($datos_bd);
        $this->link= $link;
        $query = pg_query($link,$sql);
        return $query;
    }

    function _destruct(){
        pg_close($this->link);
    }
}
?>