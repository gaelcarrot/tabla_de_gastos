<?php
require_once("../config/config.php");
$query = "SELECT * FROM gastos_categorias";
$result = $conexion->query($query);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
<div class="container-fluid ;">
        <div class="row mt-5">
            <div class="col ">
                <h1>Gastos <a href="index.php" class="btn btn-dark">regresar</a></h1>
            </div>
        </div>
        <form action="../config/insert_spending.php" method="POST">
        <div class="row mt-5">
                <div class="col-6">
                   <label for="cantidad" class="form-label">cantidad</label>
                   <input type="text" class="form-control" name="cantidad" id="cantidad" >
                </div>
                <div class="col-6 mb-3">
                   <label for="categoría" class="form-label">categoría</label>
                   <select  class="form-select" name="categoría" id="categoría">
                   <option value="0" selected>selecciona tu opcion</opcion>
                   <?php
                    while($row = $result-> fetch_assoc()){
                   ?>
                   <option value="<?php echo $row['id']; ?>"><?php echo $row['nombre']; ?></option>
                   <?php } ?>
                    </select>
                </div>
                <div class="col-12 mb-3">
                   <label for="descripción" class="form-label">descripción</label>
                   <input type="text" class="form-control" name="descripción" id="descripción" >
                </div>
                <div class="col-12 ">
                   <button type="submit" class="btn btn-success" >Guardar</button>
                </div>                
            </form>
        </div>
        
</div>
</body>
</html>