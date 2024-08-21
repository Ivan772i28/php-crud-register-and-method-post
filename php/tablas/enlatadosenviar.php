
<?php
include 'conexion.php';

$codigo = $_POST['codigo'];
$descripcion = $_POST['descripcion'];
$marca= $_POST['marca'];
$presentacion = $_POST['presentacion'];
$existencia = $_POST['existencia'];
$precio= $_POST['precio'];

// Insertar nuevo usuario
    $query = "INSERT INTO enlatados(CODIGO,DESCRIPCION,MARCA,PRESENTACION,EXISTENCIA,PRECIO	 ) VALUES (?, ?,?, ?,?, ?)";
    $stmt = mysqli_prepare($conn, $query);
    mysqli_stmt_bind_param($stmt, "ssssss", $codigo, $descripcion,$marca,$presentacion,$existencia,$precio);
    if (mysqli_stmt_execute($stmt)) {
        
        echo "datos registrados";
    } else {
        echo "Error al registrar los datos.";
    }


mysqli_stmt_close($stmt);
mysqli_close($conn);
?>
