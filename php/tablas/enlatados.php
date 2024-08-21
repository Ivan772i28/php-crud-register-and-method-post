<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>enlatados</title>
   
</head>
<body>
  
  <link rel="stylesheet" href="style.css">
    <div class="container">
    <form action="enlatadosenviar.php" method="POST" class="container">
      <label for="codigo">codigo:</label>
    <input type="number" name="codigo"  class="container " placeholder="codigo"id="codigo" >
    <label for="descripcion">descripcion:</label>
    <input type="text" name="descripcion" class="container" id="descripcion" placeholder="descripcion">
    <label for="marca">marca:</label>
    <input type="text" name="marca" id="marca" placeholder="marca" class="container">
    <label for="presentacion">presentacion:</label>
    <input type="text" name="presentacion" id="presentacion" placeholder="presentacion"  class="container">
    <label for="existencia">existencia:</label>
    <input type="text" name="existencia" id="existencia" placeholder="existencia"  class="container">
    <label for="precio">precio:</label>
    <input type="number" name="precio" id="precio" placeholder="precio"  class="container">

    <button id="bt">enviarr</button>

    </form>
   
  
  </div>
</label>
    
</body>
</html>