<?php

$servername = "sis.demolaybrasil.org.br";
$database = "sisdm_demolaybrasil";
$username = "sisdm_gcece";
$password = "gce.ce@123";
$conn = mysqli_connect($servername, $username, $password, $database);

if (!$conn) {
    die("Conexão falhou: " . mysqli_connect_error());
}
echo "Conectado";
mysqli_close($conn);


printf("Servidor: %s\n", gethostbyname('sisce.demolayceara.org.br'));


?>
