<?php
echo '<!DOCTYPE html>
		<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<div align="center"	>
	<h3>Login</h3>
	<div class="container">
		<div class="row">
			<div class="col-md-9 col-xs-12 forma">
				<form method="POST" action="http://localhost/Da SHIAT/WebContent/login.php">
					<input type="text" class="col-md-6 col-xs-12 name" name="Username"
						placeholder="username *" /></br> <input type="Password"
						class="col-md-6 col-xs-12 name" name="password"
						placeholder="password *" />
					<div class="cBtn col-xs-12">
						<input type=submit name=submit value="Einloggen">
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>';

?>