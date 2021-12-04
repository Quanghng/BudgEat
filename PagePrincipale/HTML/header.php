<?php
     $db = new PDO('mysql:host=localhost;dbname=projet', 'root','');
     $sql =  'SELECT * FROM recette';

?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;600;700&display=swap"
      rel="stylesheet"
    />
    <link href="../CSS/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="../LineAwesome/1.3.0/css/line-awesome.min.css">
    <title>Budgeat</title>
  </head>


<html lang="en">
  <body>
    <header class="header">
      <img class="logo" alt="Budgeat logo" src="../PHOTOS/logo.png" />
      <nav class="main-nav">
        <ul class="main-nav-list">
          <li><a href="#" class="main-nav-link">Section 1</a></li>
          <li><a href="#" class="main-nav-link">Section 2</a></li>
          <li><a href="#" class="main-nav-link">Section 3</a></li>
          <li><a href="#" class="main-nav-link">Section 4</a></li>
          <li><a href="#" class="main-nav-link">Section 5</a></li>
          <li><a href="#" class="main-nav-link nav-cta">Nos Recettes</a></li>
        </ul>
      </nav>
    </header>
</html>