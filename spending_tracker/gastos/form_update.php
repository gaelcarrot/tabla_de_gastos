<?php
    require_once("../config/config.php");
    $id= $_GET['id'];
    $query = "SELECT * FROM gastos_categorias";
    $result = $conexion->query($query);

    $query2= "SELECT * FROM dinero WHERE id= $id";
    $result2= $conexion->query($query2);
    $record= $result2->fetch_assoc();
    
?><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
</head>
<body>
    <div class="class container-fluid ;">
        <div class="row mt-5">
            <div class="col">
                <h1>Gastos <a href="index.php" class="btn btn-dark">Regresar</a></h1>
            </div>
        </div>
        <form action="update_spending.php" method="POST">
        <div class="row mt-5">
                <div class="col-6">
                    <label for="cantidad" class="form-label">cantidad</label>
                    <input type= "text" class="form-control" name="cantidad" id="cantidad" value= "<?php echo $record ['cantidad'];?>">
                </div>
                <div class="col-6 mb-3">
                <label for="categoría" class="form-label">categoria</label>
                <select name="" id="" class="form-select" name="categoría" id="categoría" value= "<?php echo $record ['categoría'];?>">
                <option value="0" selected>selecciona tu opcion</option>
                        <?php
                        while($row=$result->fetch_assoc()){  
                        ?>
                        <option value="<?php echo $row ['id'];?>"><?php echo $row['nombre']; ?></option>
                        <?php } ?>
                        </select>
                </div>
                <div class="col-12 mb-3">
                <label for="descripción" class="form-label">Descripcion</label>
                <input type= "text" class="form-control" name="descripción" id="descripción" value= "<?php echo $record ['descripción'];?>">
                </div>
                <div class="col-12">
                    <input type="hidden" name= "id" value= "<?php echo $id;?>">
                    <button type="submit" class="btn btn-success">Guardar</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>