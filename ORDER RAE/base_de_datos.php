<?php
// Datos de conexión a la base de datos
$host = "localhost";       // generalmente localhost
$usuario = "tu_usuario";   // tu usuario de MySQL
$clave = "tu_contraseña";  // tu contraseña de MySQL
$bd = "proyect_o_rae";     // nombre de la base de datos

// Crear conexión
$conn = new mysqli($host, $usuario, $clave, $bd);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
$nombre = $_POST['nombre'];
$email = $_POST['email'];
$mensaje = $_POST['mensaje'];

// Preparar y ejecutar consulta para evitar inyección SQL
$stmt = $conn->prepare("INSERT INTO usuarios (nombre, email, mensaje) VALUES (?, ?, ?)");
$stmt->bind_param("sss", $nombre, $email, $mensaje);

if ($stmt->execute()) {
    echo "Datos guardados correctamente.";
} else {
    echo "Error: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>