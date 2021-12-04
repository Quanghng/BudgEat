<?php
     $db = new PDO('mysql:host=localhost;dbname=projet', 'root','');
     $sql =  'SELECT * FROM recette';

?>


<html lang="en">
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
</html>