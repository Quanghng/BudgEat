<?php
    
    include('config/db_connect.php');
    if(isset($_POST['delete'])){
        $id_to_delete = mysqli_real_escape_string($conn, $_POST['id_to_delete']);
        $sql = "DELETE FROM pizza WHERE id = $id_to_delete";
        if(mysqli_query($conn, $sql)){
            //succes
            header('Location: indexKit.php');
        }
        //failure
        echo 'query error: ' . mysqli_error($conn);

    }

    //Check GET request id param
    if(isset($_GET['id'])){
        $id = mysqli_real_escape_string($conn, $_GET['id']);

        //Make sql
        $sql = "SELECT * FROM pizza WHERE id = $id";
        //Get and fetch the query res
        $result = mysqli_query($conn, $sql);
        //Fecth just one row
        $pizza = mysqli_fetch_assoc($result);

        mysqli_free_result($result);
        mysqli_close($conn);
    }

?>

<html lang="en">
    <?php include('templates/header.php') ?>

    <div class="container center grey-text">
        <?php if($pizza): ?>
            <h4><?php echo htmlspecialchars($pizza['title']); ?></h4>
            <img src="Uploads/<?php echo $pizza['image'] ?>" alt="image">
            <p>Créé par: <?php echo htmlspecialchars($pizza['email']); ?></p>
            <p><?php echo date($pizza['created_at']); ?></p>
            <h5>Ingredients:</h5>
            <p><?php echo htmlspecialchars($pizza['ingredients']); ?></p>
            <h5>Description:</h5>
            <p><?php echo htmlspecialchars($pizza['description']); ?></p>

            <!-- DELETE FORM -->
            <form action="details.php" method="POST"> 
                <input type="hidden" name="id_to_delete" value="<?php echo $pizza['Id']; ?>">
                <input type="submit" name="delete" value="Delete" class="btn brand z-depth-0">
            </form>
        <?php else: ?>
            <h5>Recette n'existe pas!</h5>
        <?php endif; ?>
    </div>

    <?php include('templates/footer.php') ?>
</html>