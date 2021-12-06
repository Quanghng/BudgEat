<?php
include('connexionBDD.php');
$sql = 'SELECT * FROM recette';
session_start();
$ID = $_SESSION['id'];


$sqlQuery = 'SELECT * FROM recette WHERE Id = ' . $ID;
$desc = $db->prepare($sqlQuery);
$desc->execute();
$recipes = $desc->fetch();

$sqlQuery2 = 'SELECT * FROM etape WHERE Id_recette = ' . $ID;
$desc2 = $db->prepare($sqlQuery2);
$desc2->execute();
$recipes2 = $desc2->fetchAll();
?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet" />
    <link href="../CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="../LineAwesome/1.3.0/css/line-awesome.min.css">
    <title>Budgeat</title>
</head>

<body>
    <?php include('header.php') ?>
    <h1>
        <?php echo $recipes['Nom']; ?>
    </h1>

    <!-- image de la recette
        <div><img src="../PHOTOS/photo<?php echo $ID ?>.jpg" alt=""></div> 
    -->

    <h2><?php echo $recipes['Description']; ?></h2>
    <?php
    foreach ($recipes2 as $des2) {
    ?>
        <h4><?php echo $des2['Nom']; ?></h4>
        <p><?php echo $des2['Description']; ?></p>
    <?php
    } ?>

    <footer><?php include('footer.php') ?></footer>
</body>

</html>