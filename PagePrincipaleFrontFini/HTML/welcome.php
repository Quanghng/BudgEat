<?php
// Initialize the session
session_start();
 
// Check if the user is logged in, if not then redirect him to login page
if(!isset($_SESSION["loggedin"]) || $_SESSION["loggedin"] !== true){
    header("location: index.php");
    exit;
}
?>
 
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="../CSS/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet" />
</head>
<body>
    <?php include("header_recette.php") ?>
    <h1 class="my-5">Bonjour, <b><?php echo htmlspecialchars($_SESSION["username"]); ?></b>. Bienvenue sur notre site.</h1>
    <p>
        <a href="reset-password.php" class="btn ">Réinitialiser votre mot de passe</a>
        <a href="logout.php" class="btn  ml-3">Déconnexion</a>
    </p>
    <?php include("footer.php") ?>
</body>
</html>