<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Productos</title>
</head>
<body>
    <div class="container">
        <form action="perecederosenviar.php" method="POST" class="container">
            <label for="codigo">codigo:</label>
            <input type="number" name="codigo" placeholder="Código" class="container" id="codigo">
            <label for="descripcion">descripcion:</label>
            <input type="text" name="descripcion" placeholder="Descripción" class="container" id="descripcion">
            <label for="tipo">tipo:</label>
            <input type="text" name="tipo" placeholder="Tipo" class="container" id="tipo">
            <label for="marca">marca:</label>
            <input type="text" name="marca" placeholder="Marca" class="container" id="marca">
            <label for="contenido">contenido:</label>
            <input type="text" name="contenido" placeholder="Contenido" class="container" id="contenido">
            <label for="existencia">existencia:</label>
            <input type="number" name="existencia" placeholder="Existencia" class="container" id="existencia">
            <label for="precio">precio:</label>
            <input type="number" name="precio" placeholder="Precio" class="container" id="precio">
            <label for="fecha_expiracion"> fecha_expiracion</label>
            <input type="date" name="fecha_expiracion" placeholder="Fecha de expiración" class="container" id="fecha_expiracion">
            <button id="bt">Agregar</button>
        </form>
        <link rel="stylesheet" href="style.css">
    </div>
</body>
</html>