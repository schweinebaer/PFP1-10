<?php
session_start();
?>

<?php 
$verbindung = mysql_connect("localhost", "root" , "Fischk0pf") 
or die(mysql_error()); 
mysql_select_db("homepage") or die ("Datenbank konnte nicht ausgewählt werden"); 

$username = $_POST["username"]; 
$passwort = md5($_POST["password"]); 

$abfrage = "SELECT username, passwort FROM login WHERE username LIKE '$username' LIMIT 1"; 
$ergebnis = mysql_query($abfrage); 
$row = mysql_fetch_object($ergebnis); 

if($row->passwort == $passwort) 
    {
    //Session
    $_SESSION["username"] = $username; 
    
    //Cookie
    $cookie_name = "Username";
    $cookie_value = $_POST['username'];
    if(!isset($_COOKIE[$cookie_name])) {
    	echo "Der Cookie mit dem Wert '" . $cookie_name . "' war noch nicht gesetzt, wir aber nun gespeichert";
    	setcookie($cookie_name, $cookie_value, time() + (86400 * 30), "/"); // 86400 = 1 Tag
    } else {
    	echo "Cookie '" . $cookie_name . "' is gespeichert für 1 Tag!<br>";
    	echo "Username: " . $_COOKIE[$cookie_name];
    };
    
    //HTML
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
				Login erfolgreich. <br> Weiter zum <a href='http://mannbaerschwein.raspctl.com/geheim.php'>Eingabebereich (geschützer Bereich)</a>
			</div>
		</div>
	</div>
</div>

</body>
</html>";
    } 
else 
    { 
    echo "Benutzername und/oder Passwort waren falsch. <a href=\"http://mannbaerschwein.raspctl.com/login-formular.html\">Login</a>"; 
    } 

?>

