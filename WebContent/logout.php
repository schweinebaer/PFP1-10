<?php 
	$_SESSION = array();
	
	if(isset($_COOKIE[session_name()])){
		setcookie(session_name(), '', time()-2592000,'/');
	}

	session_destroy(); 
	header("Location: login-formular.html");
?>
<!-- 
<html>
<head>
<meta charset='ISO-8859-1'>
<title>Ausgeloggt</title>
<link rel='stylesheet' type='text/css' href='css/style.css'>
</head>
<body>
<div align="center">
	<h3>Erfolgreich ausgeloggt</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-xs-12 forma">
				<input type="button" onclick="location.href = 'http://mannbaerschwein.raspctl.com/login-formular.html';" value="Erneut einloggen" />				
			</div>
		</div>
	</div>
</div>
</body>
</html>
 -->