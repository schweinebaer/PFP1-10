<?php
session_start();
?>

<?php
$cookie_name = "user";
$cookie_value = $_POST['username'];
setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 day
?>

<?php
if(!isset($_COOKIE[$cookie_name])) {
    echo "Cookie named '" . $cookie_name . "' is not set!";
} else {
    echo "Cookie '" . $cookie_name . "' is set!<br>";
    echo "Value is: " . $_COOKIE[$cookie_name];
}
?>

<?php 
$verbindung = mysql_connect("localhost", "root" , "") 
or die("Verbindung zur Datenbank konnte nicht hergestellt werden"); 
mysql_select_db("homepage") or die ("Datenbank konnte nicht ausgewählt werden"); 

$username = $_POST["username"]; 
$passwort = md5($_POST["password"]); 

$abfrage = "SELECT username, passwort FROM login WHERE username LIKE '$username' LIMIT 1"; 
$ergebnis = mysql_query($abfrage); 
$row = mysql_fetch_object($ergebnis); 

if($row->passwort == $passwort) 
    { 
    $_SESSION["username"] = $username; 
    echo "<!DOCTYPE html>
<html>
<head>
<meta charset='ISO-8859-1'>
<title>Eingeloggt</title>
<link rel='stylesheet' type='text/css' href='css/style.css'>
</head>
<body>
<div align='center'	>
	<h3>Login</h3>
	<div class='container'>
		<div class='row'>
			<div class='col-md-9 col-xs-12 forma'>
				Login erfolgreich. <br> Weiter zu <a href='geheim.php'>geschützem Bereich</a>'
			</div>
		</div>
	</div>
</div>

</body>
</html>";
		
		
		
		
		; 
    } 
else 
    { 
    echo "Benutzername und/oder Passwort waren falsch. <a href=\"login.html\">Login</a>"; 
    } 

?>

