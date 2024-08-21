
<?php
include 'conexion.php';

$CLAVEem = $_POST['clave'];
$NOMBRE = $_POST['nombre'];
$app = $_POST['appaterno'];
$apm = $_POST['apellidom'];
$numeroc = $_POST['num'];
$domicilio = $_POST['domicilio'];
$sueldo = $_POST['sueldo'];



// Insertar nuevo usuario
    $query = "INSERT INTO empleados(CLAVE_EMPLEADO, NOMBRE,APPAT,APMAT,TELEFONO,DOMICILIO,SUELDO_SEMANAL) VALUES (?, ?,?, ?,?, ?,?)";
    $stmt = mysqli_prepare($conn, $query);
    mysqli_stmt_bind_param($stmt, "sssssss", $CLAVEem, $NOMBRE,$app,$apm,$numeroc,$domicilio,$sueldo);
    if (mysqli_stmt_execute($stmt)) {
        echo "datos registrados";
    } else {
        echo "Error al registrar el usuario.";
    }


mysqli_stmt_close($stmt);
mysqli_close($conn);
?>