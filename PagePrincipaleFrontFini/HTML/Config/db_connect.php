<?php
    //Connect to database
    $conn = mysqli_connect('localhost', 'kaitokid0811', 'kaitokid', 'budgetKit');

    //Check connection
    if(!$conn){
        echo 'Connection error: ' . mysqli_connect_error();
    }
?>