<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ventas</title>
</head>
<body>
    <link rel="stylesheet" href="style.css">
    <div class="container">
        <form action="ventasenviar.php" method="POST" class="container">
            <label for="folio">FOLIO:</label>
            <input type="number" name="folio" id="folio" class="container">

            <label for="fecha">FECHA:</label>
            <input type="date" name="fecha" id="fecha" class="container">

            <label for="hora">HORA:</label>
            <input type="time" name="hora" id="hora" class="container">

            <label for="clave_empleado">CLAVE_EMPLEADO:</label>
            <input type="number" name="clave_empleado" id="clave_empleado" class="container">

            <label for="codigo">CODIGO:</label>
            <input type="number" name="codigo" id="codigo" class="container">

            <label for="cantidad">CANTIDAD:</label>
            <input type="number" name="cantidad" id="cantidad" class="container">

            <button id="bt">Agregar</button>
        </form>
    </div>
</body>
</html>