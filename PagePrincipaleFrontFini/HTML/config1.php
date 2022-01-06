<?php
try {
    $db = new PDO('mysql:host=localhost;dbname=projet1;charset=utf8', 'root', '');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
