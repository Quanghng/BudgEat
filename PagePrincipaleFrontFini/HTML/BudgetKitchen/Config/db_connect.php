<?php
    //Connect to database
    $conn = mysqli_connect('localhost', 'root', '', 'projet');

    //Check connection
    if(!$conn){
        echo 'Connection error: ' . mysqli_connect_error();
    }
?>