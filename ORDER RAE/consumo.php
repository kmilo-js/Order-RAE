<?php
header("Content-Type: application/json");
$json = file_get_contents("pag.json");
echo $json;
?>