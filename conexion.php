<?php
	function conexion(){

	$host = "host=dpg-cr6g02rv2p9s7392u6ng-a.oregon-postgres.render.com";
	$port = "port=5432";
	$dbname = "dbname=dbclase_sklp";
	$user = "user=dbclase_sklp_user";
	$password = "password=6peKCvk3flSeONdotzlckPPhGCvuOyo9";

	$db = pg_connect("$host $port $dbname $user $password");

	return $db;
}
?>
