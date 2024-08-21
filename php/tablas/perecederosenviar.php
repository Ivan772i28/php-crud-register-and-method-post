
<?php
include 'conexion.php';

$codigo = $_POST['codigo'];
$descripcion = $_POST['descripcion'];
$tipo = $_POST['tipo'];
$marca = $_POST['marca'];
$contenido = $_POST['contenido'];
$existencia = $_POST['existencia'];
$precio = $_POST['precio'];
$fecha_expiracion = $_POST['fecha_expiracion'];

// Insertar nuevo producto
$query = "INSERT INTO perecederos(CODIGO, DESCRIPCION, TIPO, MARCA, CONTENIDO, EXISTENCIA, PRECIO, FECHA_EXPIRACION) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
$stmt = mysqli_prepare($conn, $query);
mysqli_stmt_bind_param($stmt, "ssssssss", $codigo, $descripcion, $tipo, $marca, $contenido, $existencia, $precio, $fecha_expiracion);
if (mysqli_stmt_execute($stmt)) {
    echo "Producto registrado";
} else {
    echo "Error al registrar el producto.";
}

mysqli_stmt_close($stmt);
mysqli_close($conn);
?>