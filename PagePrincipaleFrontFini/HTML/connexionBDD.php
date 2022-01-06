<?php
try {
    $db = new PDO('mysql:host=localhost;dbname=projet;charset=utf8', 'kaitokid0811', 'kaitokid');
} catch (Exception $e) {
    die('Erreur : ' . $e->getMessage());
}
