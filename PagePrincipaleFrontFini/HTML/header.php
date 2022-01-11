<script>
    function openBudgKit(){
        window.open("BudgetKitchen/indexKit.php","_self")
    };
</script>
<header class="header">
    <a href="#"><img class="logo" alt="Budgeat logo" src="../PICTURES/logo.png" /></a>
    <nav class="main-nav">
        <ul class="main-nav-list">
            <li>
                <a href="#notre-politique" class="main-nav-link">Notre politique</a>
            </li>
            <li>
                <a href="#defile-de-recettes" class="main-nav-link">Defilé de recettes</a>
            </li>
            <li>
                <a href="#recettes-phares" class="main-nav-link">Recettes phares</a>
            </li>
            <li>
                <a href="" class="main-nav-link" onclick="openBudgKit()">BudgEat Kitchen</a>
            </li>
            <li><a href="#" class="main-nav-link nav-cta">Nos Recettes</a></li>
        </ul>
    </nav>
    <button class="btn-mobile-nav">
        <ion-icon name="menu-outline" class="icon-mobile-nav"></ion-icon>
        <ion-icon name="close-outline" class="icon-mobile-nav"></ion-icon>
    </button>
</header>