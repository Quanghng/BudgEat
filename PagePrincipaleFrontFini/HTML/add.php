<?php

    include('config/db_connect.php');

    $title = $email = $ingredients = $description ='';
    $errors = array('email'=>'', 'title'=>'', 'ingredients'=>'', 'image'=>'', 'description' => '');

    if(isset($_POST['submit'])){
        //Check email
        if(empty($_POST['email'])){
            $errors['email'] = 'un email est requis <br />';
        }
        else{
            $email = $_POST['email']; //value input
            if(!filter_var($email, FILTER_VALIDATE_EMAIL)){
                $errors['email'] = 'Saisissez une adresse valide!';
            }
        }

        if(empty($_POST['title'])){
            $errors['title'] = 'Un titre est requis <br />';
        }
        else{
            $title = $_POST['title'];
            if(!preg_match('/^[a-zA-Z\s]+$/', $title)){
                $errors['title'] =  'Titre contient uniquement des lettres et des espaces';
            }
        }

        if(empty($_POST['ingredients'])){
            $errors['ingredients'] = 'Au moins un ingrédients est requis <br />';
        }
        else{
            $ingredients = $_POST['ingredients'];
            if(!preg_match('/^([a-zA-Z\s]+)(,\s*[a-zA-Z\s]*)*$/', $ingredients)){
                $errors['ingredients'] =  'Les ingrédients doivent être une liste séparée par des virgules';
            }
        }

        if(empty($_POST['ingredients'])){
            $errors['ingredients'] = 'La description est requis <br />';
        }
        else{
            $description = $_POST['description'];
        }

        
        if(!array_filter($errors)){ //No errors in array => false => if statement true
            $email = mysqli_real_escape_string($conn, $_POST['email']); //Override previous $email
            $title = mysqli_real_escape_string($conn, $_POST['title']); //Override previous $title
            $ingredients = mysqli_real_escape_string($conn, $_POST['ingredients']); //Override previous $ing
            $description = mysqli_real_escape_string($conn, $_POST['description']); //Override previous $des

            //Check Images
            $file = $_FILES['file'];
            $fileName = $_FILES['file']['name'];
            $fileTmpName = $_FILES['file']['tmp_name'];
            $fileSize = $_FILES['file']['size'];
            $fileError = $_FILES['file']['error'];
        
            //Extension Filter
            $fileExt = explode('.', $fileName);
            $fileActualExt = strtolower(end($fileExt));
        
            $allowed = array('jpg', 'jpeg', 'png', 'pdf');
            if (in_array($fileActualExt, $allowed)){
                if ($fileError === 0){
                    if ($fileSize < 100000){
                        $fileNameNew = uniqid('', true).".".$fileActualExt;
                        $fileDestination = 'Uploads/'.$fileNameNew;
                        move_uploaded_file($fileTmpName, $fileDestination);
                        $sql = "INSERT INTO pizza(title,email,ingredients,image,description) VALUES('$title', '$email', '$ingredients', '$fileNameNew', '$description')";
                        $res = mysqli_query($conn, $sql);
                        if($res){
                            header("Location: indexKit.php");
                        }else{
                            echo 'query erro: ' . mysqli_error($conn);
                        }
                    }else{
                        $errors['image'] = "Your file is too big!";
                    }
                }else{
                    $errors['image'] = "There was an error uploading your file!";
                }
            }else{
                $errors['image'] = "You cannot upload file of this type!";
            }

        }

    } //End of post check

?>
<html lang="en">

    <?php include('templates/header.php'); ?>
    
    <section class="container grey-text">
        <h4 class="center">Ajouter votre recette!</h4>
        <form action="add.php" class="white" method="POST" enctype="multipart/form-data">
            <label>Email:</label>
            <input type="text" name="email" value="<?php echo htmlspecialchars($email); ?>">
            <div class="red-text"><?php echo $errors['email']; ?></div>

            <label>Titre:</label>
            <input type="text" name="title" value="<?php echo htmlspecialchars($title); ?>">
            <div class="red-text"><?php echo $errors['title']; ?></div>

            <label>Ingrédients (séparés par des virgules):</label>
            <input type="text" name="ingredients" value="<?php echo htmlspecialchars($ingredients); ?>">
            <div class="red-text"><?php echo $errors['ingredients']; ?></div>

            <label>Description:</label>
            <input type="text" name="description" value="<?php echo htmlspecialchars($description); ?>">
            <div class="red-text"><?php echo $errors['description']; ?></div>

            <label>Images:</label><br>
            <input type="file" name="file">
            <div class="red-text"><?php echo $errors['image']; ?></div>
            <br>

            <div class="center">
                <input type="submit" name="submit" value="submit" class="btn brand z-depth-0">
            </div>
        </form>
    </section>

    <?php include('templates/footer.php'); ?>
    
</body>
</html>