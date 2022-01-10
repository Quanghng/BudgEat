<?php
    include('config/db_connect.php');

    //Write query for all pizza
    $sql = 'SELECT title, ingredients, id FROM pizza ORDER BY created_at';

    //Make query & get result
    $result = mysqli_query($conn, $sql);

    //Fetch the resulting rows as an arrays
    $pizzas = mysqli_fetch_all($result, MYSQLI_ASSOC);

    //Free result from memory
    mysqli_free_result($result);

    //Close connection
    mysqli_close($conn);

    //explode(',', $pizzas[0]['ingredients']));

?>
<html lang="en">

    <?php include('templates/header.php'); ?>
    
    <h4 class="center grey-text">Welcome to BudgEat Kitchen</h4>
    <div class="container">
        <div class="row">

            <?php foreach($pizzas as $pizza): ?>

                <div class="col s6 md6">
                    <div class="card z-depth-0">
                        <img src="img/pizza.svg" alt="#" class="pizza">
                        <div class="card-content center">
                            <h6><?php echo htmlspecialchars($pizza['title']); ?></h6>
                            <ul>
                                <?php foreach(explode(',', $pizza['ingredients']) as $ing): ?>
                                    <li><?php echo htmlspecialchars($ing); ?></li>
                                <?php endforeach ?>
                            </ul>
                        </div>
                        <div class="card-action right-align">
                            <a href="details.php?id=<?php echo $pizza['id']; ?>" class="brand-text">More info</a>
                        </div>
                    </div>
                </div>

            <?php endforeach ?>

        </div>
    </div>

    <?php include('templates/footer.php'); ?>
    
</body>
</html>