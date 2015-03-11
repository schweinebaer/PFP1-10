<?php
$_db_host = "localhost"; // meist localhost
$_db_datenbank = "homepage";
$_db_username = "root";
$_db_password = "root";

SESSION_START ();

// Datenbankverbindung herstellen
$link = mysql_connect ( $_db_host, $_db_username, $_db_password );

// Hat die Verbindung geklappt?
if (! $link) {
	die ( "Keine Datenbankverbindung m�glich: " . mysql_error () );
}

// Verbindung zur richtigen Datenbank herstellen
$datenbank = mysql_select_db ( $_db_datenbank, $link );

if (! $datenbank) {
	echo "Kann die Datenbank nicht benutzen: " . mysql_error ();
	mysql_close ( $link ); // Datenbank schliessen
	exit (); // Programm beenden !
}

// #################################################################

// Ist die $_POST Variable submit nicht leer ???
// dann wurden Logindaten eingegeben, die m�ssen wir �berpr�fen !
if (! empty ( $_POST ["submit"] )) {
	// Die Werte die im Loginformular eingegeben wurden "escapen",
	// damit keine Hackangriffe �ber den Login erfolgen k�nnen !
	// Mysql_real_escape ist auf jedenfall dem Befehle addslashes()
	// vorzuziehen !!! Ohne sind mysql injections m�glich !!!!
	$_username = mysql_real_escape_string ( $_POST ["username"] );
	$_passwort = mysql_real_escape_string ( $_POST ["password"] );
	
	// Befehl f�r die MySQL Datenbank
	$_sql = "SELECT * FROM login_user WHERE
                    username='$_username' AND
                    password='$_password' AND
                    user_geloescht=0
                LIMIT 1";
	
	// Pr�fen, ob der User in der Datenbank existiert !
	try {
		$_res = mysql_query ( $_sql, $link );
	} catch ( Exception $e ) {
		echo "query klappt nicht";
	}
	;
	try {
		$_anzahl = @mysql_num_rows ( $_res );
	} catch ( Exception $e ) {
		echo "anzahlt wird nich erh�ht";
	}
	
	// Die Anzahl der gefundenen Eintr�ge �berpr�fen. Maximal
	// wird 1 Eintrag rausgefiltert (LIMIT 1). Wenn 0 Eintr�ge
	// gefunden wurden, dann gibt es keinen Usereintrag, der
	// g�ltig ist. Keinen wo der Username und das Passwort stimmt
	// und user_geloescht auch gleich 0 ist !
	if ($_anzahl > 0) {
		echo "Der Login war erfolgreich.<br>";
		
		// In der Session merken, dass der User eingeloggt ist !
		$_SESSION ["login"] = 1;
		
		// Den Eintrag vom User in der Session speichern !
		$_SESSION ["user"] = mysql_fetch_array ( $_res, MYSQL_ASSOC );
		
		// Das Einlogdatum in der Tabelle setzen !
		$_sql = "UPDATE login_user SET letzter_login=NOW()
                     WHERE id=" . $_SESSION ["user"] ["id"];
		mysql_query ( $_sql );
	} else {
		echo "Die Logindaten sind nicht korrekt.<br>";
	}
}

// Ist der User eingeloggt ???
if ($_SESSION ["login"] == 0) {
	// ist nicht eingeloggt, also Formular anzeigen, die Datenbank
	// schliessen und das Programm beenden
	include ("login-formular.html");
	mysql_close ( $link );
	exit ();
}

// Hier w�re der User jetzt g�ltig angemeldet ! Hier kann
// Programmcode stehen, den nur eingeloggte User sehen sollen !!
echo "Hallo, Sie sind erfolgreich eingeloggt !<br>";

// #################################################################

// Datenbank wieder schliessen
mysql_close ( $link );
?>