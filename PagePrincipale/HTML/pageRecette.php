<?php
$db = mysqli_connect('localhost', 'root', '', 'projet');
$sql =  'SELECT * FROM recette';
session_start();
$id = $_SESSION['id'];

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    id =
    <?php echo $_SESSION['id']; ?>

    <!-- image de la recette
        <div><img src="../PHOTOS/photo<?php echo $ID ?>.jpg" alt=""></div> 
    -->

</body>

</html>