
<?php
include 'conexion.php';

$folio = $_POST['folio'];
$fecha = $_POST['fecha'];
$hora = $_POST['hora'];
$clave_empleado = $_POST['clave_empleado'];
$codigo = $_POST['codigo'];
$cantidad = $_POST['cantidad'];

// Insert new record
$query = "INSERT INTO vntas(folio,fecha,hora,claveEm,codigo,cantidad) VALUES (?, ?, ?, ?, ?,?)";
$stmt = mysqli_prepare($conn,$query);
mysqli_stmt_bind_param($stmt, "ssssss", $folio, $fecha, $hora, $clave_empleado, $codigo, $cantidad);
if (mysqli_stmt_execute($stmt)) {
    echo "Venta registrada";
} else {
    echo "Error al registrar la venta.";
}

mysqli_stmt_close($stmt);
mysqli_close($conn);
?>