<?php
include('connexionBDD.php');
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
  <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@400;500;600;700&display=swap" rel="stylesheet" />
  <link rel="stylesheet" href="../CSS/style.css?v=<?php echo time(); ?>">
  <link rel="stylesheet" href="../CSS/queries.css?v=<?php echo time(); ?>">
  <link rel="stylesheet" href="../LineAwesome/1.3.0/css/line-awesome.min.css" />
  <title>Budgeat</title>
  <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
  <script defer src="https://unpkg.com/smoothscroll-polyfill@0.4.4/dist/smoothscroll.min.js"></script>
</head>

<body>
  <?php include("header.php") ?>
  <main>
    <section class="section-hero">
      <div class="hero container grid grid--2cols">
        <div class="hero-text-box">
          <h1 class="main-heading">
            Des repas pensés spécialement pour les étudiants
          </h1>
          <p class="hero-paragraph">
            Toutes les recettes publiées sont destinées aux étudiants et
            choisies avec soin. Elles sont selectionnées en se basant sur des
            critères bien précis,elles sont abordables, ne nécessitent pas
            beaucoup de temps ou d'énergie, sont rapides à réaliser,
            nutritives et les allergènes sont précisés pour chaque recette.
          </p>
          <a href="#" class="btn btn--main margin-right-sm">Nos recettes</a>
          <a href="#footer" class="btn btn--secondary">A propos &darr;</a>
        </div>
        <div class="hero-img-box">
          <img src="../PICTURES/hero.png" alt="bunch of food related images" class="hero-img" />
        </div>
      </div>
    </section>
    <div class="features-container" id="notre-politique">
      <section class="features-description container grid grid--3cols">
        <div class="feature">
          <svg xmlns="http://www.w3.org/2000/svg" class="feature-icon" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M14.121 15.536c-1.171 1.952-3.07 1.952-4.242 0-1.172-1.953-1.172-5.119 0-7.072 1.171-1.952 3.07-1.952 4.242 0M8 10.5h4m-4 3h4m9-1.5a9 9 0 11-18 0 9 9 0 0118 0z" />
          </svg>
          <h2 class="feature-title">Des recettes économiques pour tous</h2>
          <p class="feature-text">
            Nous calculons personnellement le coût auquel vous reviendra
            chaque recette publiée sur le site. Nous vous garantissons que
            chaque repas vous coûtera moins de 5 euros et que l'apport
            énergétique de celui-ci sera suffisant pour que vous teniez toute
            la journée sans grignottage.
          </p>
        </div>
        <div class="feature">
          <svg xmlns="http://www.w3.org/2000/svg" class="feature-icon" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M12 6V4m0 2a2 2 0 100 4m0-4a2 2 0 110 4m-6 8a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4m6 6v10m6-2a2 2 0 100-4m0 4a2 2 0 110-4m0 4v2m0-6V4" />
          </svg>
          <h2 class="feature-title">Des recettes adaptées à chacun</h2>
          <p class="feature-text">
            Nous mettons tout en oeuvre pour plaire à tous nos utilisateurs,
            pour cela nous veillons à diversifier les recettes mais aussi à
            préciser tous les allergènes présents dans une recette et les
            modifications que vous pouvez y apporter pour profiter du plat que
            vous soyiez allergiques ou non
          </p>
        </div>
        <div class="feature annoying">
          <svg xmlns="http://www.w3.org/2000/svg" class="feature-icon" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M3.055 11H5a2 2 0 012 2v1a2 2 0 002 2 2 2 0 012 2v2.945M8 3.935V5.5A2.5 2.5 0 0010.5 8h.5a2 2 0 012 2 2 2 0 104 0 2 2 0 012-2h1.064M15 20.488V18a2 2 0 012-2h3.064M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
          </svg>
          <h2 class="feature-title">
            Des recettes pour préserver votre santé
          </h2>
          <p class="feature-text">
            Nous ne laissons rien au hasard, nous suivons les recommendations
            liées à la santé pour établir nos recettes. Tout est en parfait
            équilibre de façon à préserver votre santé tout en préservant
            votre portefeuille. Car votre santé est l'une des choses les plus
            importantes que vous détenez
          </p>
        </div>
      </section>
    </div>
    <div class="expo-container" id="defile-de-recettes">
      <section class="recipe-expo container">
        <h2 class="recipe-expo-heading">Défilé de recettes:</h2>
        <!-- <ul class="recipe-list grid grid--6cols"> -->
        <!-- <li class="recipe-picture-list"> -->
        <Form action="recup_info.php" method="post" class="recipe-list grid grid--6cols">
          <?php
          foreach ($db->query($sql) as $row) { ?>
            <button class="recipe-picture-list" type="submit" name="photo" value="<?php echo $row['Id'] ?>">
              <img src=" ../PICTURES/<?php echo $row['image'] ?>" alt="Photo nourriture" class="recipe-picture" />
            </button>
          <?php
          }
          ?>
        </Form>
      </section>
    </div>
    <div class="flagship-recipe-container" id="recettes-phares">
      <section class="flagship-recipe container">
        <h2 class="flagship-recipe-heading">Nos recettes phares:</h2>
        <div class="flagship-recipe-wrap">
          <div class="recipe-card">
            <img src="../PICTURES/SaladeVegan.jpg" alt="bunch of food related images" class="card-img" />
            <div class="recipe-content">
              <span class="card-category vegan">Vegan</span>
              <div class="wrap-card-elements">
                <p class="card-title">Salade Variée</p>
                <ul class="card-characteristics">
                  <li class="card-characteristic">
                    <i class="las la-money-bill card-icon"></i><span>4.25 euros</span>
                  </li>
                  <li class="card-characteristic">
                    <i class="las la-burn card-icon"></i><span>630 Kcals</span>
                  </li>
                  <li class="card-characteristic">
                    <i class="las la-star card-icon"></i><span>4.5 (47)</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="recipe-card">
            <img src="../PICTURES/LegumesSautes.jpg" alt="bunch of food related images" class="card-img" />
            <div class="recipe-content">
              <span class="card-category vegetarian">Vegetarien</span>
              <div class="wrap-card-elements">
                <p class="card-title">Legumes Sautés</p>
                <ul class="card-characteristics">
                  <li class="card-characteristic">
                    <i class="las la-money-bill card-icon"></i><span>4.5 euros</span>
                  </li>
                  <li class="card-characteristic">
                    <i class="las la-burn card-icon"></i><span>580 Kcals</span>
                  </li>
                  <li class="card-characteristic">
                    <i class="las la-star card-icon"></i><span>4.6 (51)</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
          <div class="recipe-card">
            <img src="../PICTURES/Pates.jpg" alt="bunch of food related images" class="card-img" />
            <div class="recipe-content">
              <span class="card-category Vegetarian">Vegetarien</span>
              <div class="wrap-card-elements">
                <p class="card-title">Pâtes Au Pesto</p>
                <ul class="card-characteristics">
                  <li class="card-characteristic">
                    <i class="las la-money-bill card-icon"></i><span>4 euros</span>
                  </li>
                  <li class="card-characteristic">
                    <i class="las la-burn card-icon"></i><span>650 Kcals</span>
                  </li>
                  <li class="card-characteristic">
                    <i class="las la-star card-icon"></i><span>4.5 (43)</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
      </section>
    </div>
  </main>
  <?php include("footer.php") ?>
  <script src="../JS/script.js"></script>
</body>

</html>