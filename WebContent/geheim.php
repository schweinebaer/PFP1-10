<?php
session_start();
?>

<?php 
if(!isset($_SESSION["username"])) 
   { 
   echo "Bitte erst <a href=\"loginNEW.html\">einloggen</a>"; 
   exit; 
   } 
?> 