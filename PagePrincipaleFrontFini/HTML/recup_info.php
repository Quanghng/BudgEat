<?php
include('connexionBDD.php');
$sql =  'SELECT * FROM recette';
session_start();

$test = $_POST['photo'];
$_SESSION['id'] = $test;

$nextPage = header('Location: pageRecette.php');
echo $nextPage;



