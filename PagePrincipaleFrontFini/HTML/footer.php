<script>
    function openRegister(){
        window.open("register.php","_self")
    };
    function openLogin(){
        window.open("login.php","_self")
    };
</script>
<div class="footer-container" id="footer">
    <footer class="container footer">
        <div class="logos-copyright">
            <a href="#"><img class="logo" alt="Budgeat logo" src="../PICTURES/logo.png" /></a>
            <div class="social-logos">
                <a href="#" class="social-logo-link"><i class="lab la-facebook social-logo"></i></a>
                <a href="#" class="social-logo-link"><i class="lab la-twitter social-logo"></i></a>
                <a href="#" class="social-logo-link"><i class="lab la-instagram social-logo"></i></a>
            </div>
            <div class="copyright-text">
                &copy; Budgeat 2021 -Tous droits réservés
            </div>
        </div>
        <div class="contact">
            <p class="footer-heading">Contactez nous</p>
            <p class="adress">42 Place du Jeu de Paume Paris</p>
            <p>
                <a href="tel:+33-6789-432-213" class="footer-link">+33-6789-432-213</a><br />
                <a href="mailto:budgeat@gmail.com" class="footer-link">budgeat@gmail.com</a>
            </p>
        </div>
        <div class="compte">
            <p class="footer-heading">Compte</p>
            <p>
                <a href="#" class="footer-link" onclick="openRegister()">Creer un compte</a><br />
                <a href="#" class="footer-link" onclick="openLogin()">Se connecter</a>
            </p>
        </div>
        <div class="compte">
            <p class="footer-heading">Social</p>
            <p>
                <a href="#" class="footer-link">Consulter le forum</a><br />
                <a href="#" class="footer-link">Poster un avis</a>
            </p>
        </div>
    </footer>
</div>