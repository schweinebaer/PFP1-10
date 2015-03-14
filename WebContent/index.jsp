<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page pageEncoding="UTF-8"%>
<html lang="de">
<head>
<title>PFP 1-10</title>
<link rel="shortcut icon" href="images/logo.ico">
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Diese Homepage ist Teil des PFP 1-10 Internetauftritts">
<meta name="author" content="Benedikt Breitschopf und Dominik Brox">
<meta name="keywords"
	content="PFP1-10, Nachhilfe, Wiesloch, Wasserglasmethode">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="css/font-awesome.css">
<link rel='stylesheet' id='camera-css' href='css/camera.css'
	type='text/css' media='all'>
<link rel="stylesheet" type="text/css" href="css/slicknav.css">
<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css"
	media="screen" title="prettyPhoto main stylesheet" charset="utf-8" />
<link rel="stylesheet" type="text/css" href="css/style.css">

<!-- LIGHTBOX CSS -->
<link href="css/lightbox.css" rel="stylesheet" />

<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>

<link
	href='http://fonts.googleapis.com/css?family=Roboto:400,300,700|Open+Sans:700'
	rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery.mobile.customized.min.js"></script>
<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="js/camera.min.js"></script>
<script type="text/javascript" src="js/myscript.js"></script>
<script src="js/sorting.js" type="text/javascript"></script>
<script src="js/jquery.isotope.js" type="text/javascript"></script>

<!-- LIGHTBOX JS -->

<script src="js/lightbox.min.js" type="text/javascript"></script>




<script>
	jQuery(function() {
		jQuery('#camera_wrap_1').camera({
			transPeriod : 500,
			time : 3000,
			height : '490px',
			thumbnails : false,
			pagination : true,
			playPause : false,
			loader : false,
			navigation : false,
			hover : false
		});
	});
</script>
<script src="https://apis.google.com/js/platform.js" async defer>
	{
		lang: 'de'
	}
</script>

<script>
	function showHint(str) {
		if (str.length == 0) {
			document.getElementById("txtHint").innerHTML = "";
			return;
		} else {
			var xmlhttp = new XMLHttpRequest();
			xmlhttp.onreadystatechange = function() {
				if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
					document.getElementById("txtHint").innerHTML = xmlhttp.responseText;
				}
			}
			xmlhttp.open("GET",
					"http://localhost:8080/Da SHIAT/WebContent/gethint.php?q="
							+ str, true);
			xmlhttp.send();
		}
	}
</script>


</head>

<body>
	<%
		Integer hitsCount = (Integer) application
				.getAttribute("hitCounter");
		if (hitsCount == null || hitsCount == 0) {
			/* First visit */

			hitsCount = 1;
		} else {
			/* return visit */

			hitsCount += 1;
		}
		application.setAttribute("hitCounter", hitsCount);
	%>

	<div id="home">
		<div class="headerLine">
			<div id="menuF" class="default">
				<div class="container">
					<div class="row">
						<div class="logo col-md-4">
							<div>
								<a href="#"> <img src="images/logo.png">
								</a>
							</div>
						</div>
						<div class="col-md-8">
							<div class="navmenu" style="text-align: center;">
								<ul id="menu">
									<li class="active"><a href="#home">Home</a></li>
									<li><a href="#bieten">Was bieten wir</a></li>
									<li><a href="#foerderung">Förderungen</a></li>
									<li><a href="#ich">Über mich</a></li>
									<li class="last"><a href="#contact">Kontakt</a></li>
									<!--li><a href="#features">Features</a></li-->
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!--
			
			Neue Schlagwörter für Aufhänger:
			
			ALT:
			Rechtschreibung
			Rechenschwäche
			Lese-Rechtschreib-Schwäche
			Aufsatz
			Dyskalkulie 
			
			Neue Reihenfolge:
			-> Dyskalkulietherapie
			-> Wasserglasmethode (R)
			-> Mathematikförderung
			-> Lese-Rechtschreib-Schwäche (LRS)
			-> Rechschreibung
			-> Aufsatz
			-> Vorschulische Förderung
			
			 -->
			<div class="container">
				<div class="row wrap">
					<div class="col-md-12 gallery">
						<div class="camera_wrap camera_white_skin" id="camera_wrap_1">
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>Rechtschreibung</h2>
								</div>
							</div>
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>Rechenschwäche</h2>
								</div>
							</div>
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>Lese-Rechtschreib-Schwäche</h2>
								</div>
							</div>
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>Dyskalkulie</h2>
								</div>
							</div>
							<div data-thumb="" data-src="images/slides/blank.gif">
								<div class="img-responsive camera_caption fadeFromBottom">
									<h2>Aufsatz</h2>
								</div>
							</div>
						</div>
						<!-- #camera_wrap_1 -->
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-4 project">
				<h3 id="counter">0</h3>
				<h4>Tolle Projekte</h4>
				<p>Hier steht der Text welche Projekte gemacht wurden</p>
			</div>
			<div class="col-md-4 project">
				<h3 id="counter1">0</h3>
				<h4>Happy Kids</h4>
				<p>So viele Kinder haben schon erfolgreich bei mir gelernt. </p>
			</div>
			<div class="col-md-4 project">
				<h3 id="counter2" style="margin-left: 20px;">0</h3>
				<h4 style="margin-left: 20px;">Auszeichnungen</h4>
				<p>Alles nur ein Vorschlag, ich brauche halt Input und Ideen</p>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-md-12 cBusiness">
				<h3>Liebe Eltern,</h3>
				<h4>
					ich freue mich, dass Sie sich für die Arbeit in der Pädagogischen
					Förderpraxis interessieren. <br /> Die PFP1-10 fördert Kinder von
					der 1.â10. Klasse.<br /> Jedes Kind ist etwas Besonderes und
					kommt mit anderen Lernvorausetzungen in meine Praxis. <br /> Meine
					Aufgabe besteht darin, ihr Kind an der Stufe abzuholen, wo es sich
					vom Wissensstand her gerade befindet. <br /> Somit wird eine
					über- oder Unterforderung vermieden. Die Lernentwicklung der
					Schüler/innen wird während des gesamten Förderzeitraums immer
					beobachtet.<br /> <br /> Um diese hohe Individualität leisten zu
					können, ist es selbstverständlich, dass nur im Einzel- oder
					Partnerunterricht (Lernen zu zweit) gefördert wird!<br /> <br />
					Ebenfalls lege ich großen Wert darauf, dass sich ihr Kind in
					meiner Praxis wohl fühlt. Ein gutes Lernklima bietet die optimale
					Grundlage für Lernerfolg. <br /> Ich habe Ihnen hier die
					wichtigsten Informationen über die PFP1-10 zusammengestellt und
					hoffe, dass ich Ihnen weiterhelfen kann.<br /> Sollten Sie noch
					Fragen haben, dann können Sie mich gerne von Montag bis Mittwoch
					zwischen 9.00-11.00 Uhr unter der Nummer: 06222/386112 anrufen.<br />
					<br /> Birgit Breitschopf-Reimann<br /> <br />
				</h4>
				<div>
					<h2>News:</h2>
					<h2>
						<marquee direction="up" scrollamount="2" style="height: 200px;">
							<%
								Connection conn = null;
								ResultSet result = null;
								Statement stmt = null;
								ResultSetMetaData rsmd = null;
								try {
									Class c = Class.forName("com.mysql.jdbc.Driver");
								} catch (Exception e) {
									out.write("Error!!!!!!" + e);
								}
								try {
									conn = DriverManager.getConnection(
											"jdbc:mysql://127.0.0.1/user", "root", "");
								} catch (SQLException e) {
									System.out.println("Error!" + e);
								}
								PreparedStatement ps = (PreparedStatement) conn
										.prepareStatement("SELECT * from news");
								result = ps.executeQuery();
								while (result.next()) {
									String id = result.getString("id");
									String news = result.getString("news");
									out.println(news + "<hr>");
								}
							%>
						</marquee>
					</h2>
				</div>
			</div>
		</div>
	</div>
	<!-- 		<div class="container">
			<div class="row">
				<div class="col-md-12 centPic">
					<img class="img-responsive"  src="images/bizPic.png"/>
				</div>
			</div>
		</div>   
    </div>
 -->

	<!--bieten start-->
	<div id="bieten">
		<div class="line2">

			<div class="container">
				<div class="row Fresh">
					<div class="col-md-4 Des">
						<i class="fa fa-heart"></i>
						<h4>Rechtschreibung</h4>
						<p></p>
					</div>
					<div class="col-md-4 Ver">
						<i class="fa fa-cog"></i>
						<h4>Lese-Rechtschreib-Schwäche</h4>
						<p>Text</p>
					</div>
					<div class="col-md-4 Fully">
						<i class="fa fa-tablet"></i>
						<h4>Aufsatz</h4>
						<p>Text TextText TextText TextText TextText TextText TextText
							TextText Text</p>
					</div>
					<div class="col-md-4 Fully">
						<i class="fa fa-tablet"></i>
						<h4>Rechenschwäche</h4>
						<p>Text TextText TextText TextText TextText TextText TextText
							TextText Text</p>
					</div>
					<div class="col-md-4 Fully">
						<i class="fa fa-tablet"></i>
						<h4>Dyskalkulie</h4>
						<p>Text TextText TextText TextText TextText TextText TextText
							TextText Text</p>
					</div>
					<div class="col-md-4 Fully">
						<i class="fa fa-tablet"></i>
						<h4>Weitere Sachen möglich - Bilder pass ich an</h4>
						<p>Text TextText TextText TextText TextText TextText TextText
							TextText Text</p>
					</div>
					<div>
						<a class="button" href="http://localhost:8080/PFP_1-10/testPath">Flyer</a>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!--foerderung start-->
	<div id="foerderung">

		<div class="container">

			<div class="row">
				<!-- filter_block -->
				<div id="options" class="col-md-12" style="text-align: center;">
					<ul id="filter" class="option-set" data-option-key="filter">
						<li><a class="selected" href="#filter" data-option-value="*"
							class="current">Alle Förderungen</a></li>
						<li><a href="#filter" data-option-value=".polygraphy">Mathematik</a></li>
						<li><a href="#filter" data-option-value=".branding">Dyskalkulie</a></li>
						<li><a href="#filter" data-option-value=".web">Deutsch</a></li>
						<li><a href="#filter" data-option-value=".text_styles">Sprachförderung</a></li>
						<li><a href="#filter" data-option-value=".text_styles">Kurse</a></li>
					</ul>
				</div>

				<!-- //filter_block -->
				<div class="portfolio_block columns3   pretty"
					data-animated="fadeIn">
					<div class="element col-sm-4   gall polygraphy">
						<h4>Mathematikförderung</h4>
						<p>Die Förderung hat eine Dauer von 45 Minuten und richtet
							sich individuell nach den Lerndefiziten ihres Kindes.</p>
						<p>Buchen Sie Einzel- oder Partnerförderung.</p>
						<p>Ziel ist es, in Anlehnung an die Hausaufgaben, eventuellen
							Rechenschwächen entgegenzuwirken, um somit die schulische
							Leistung zu verbessern.</p>
					</div>

					<div class="element col-sm-4   gall branding">
						<h4>Dyskalkulietherapie</h4>
						<p>Eine Dyskalkulie ist eine Rechenschwäche, die durch
							herkömmliche Nachhilfe meist nicht behoben werden kann. Die
							Eltern werden in erster Linie durch schlechte Schulleistungen auf
							diese Schwäche aufmerksam. Auch häufiges üben bringt nicht den
							erwünschten Erfolg.</p>
						<p>Woran erkenne ich, ob mein Kind rechenschwach ist?</p>
						<ul>
							<li>ihr Kind rechnet zählend (erkennt die Zahl 7 nur als
								Teil einer Zahlenreihe)</li>
							<li>häufiges Verrechnen um 1 (12-5=8)</li>
							<li>der Zehnerübergang als häufige Fehlerquelle</li>
							<li>Rechnen mit den Fingern (5+3 wird an den Fingern
								abgezählt, genau wie 3+5)</li>
							<li>häufiges Verdrehen der Zahlenschreibweise (45 statt 54)</li>
							<li>über Zahlen bestehen nur abstrakte und keine konkreten
								Vorstellungen (Bsp: Was kann ich mir für 35€ kaufen?)</li>
						</ul>
						<p>Handeln Sie früh. Eine Rechenschwäche âwächstâ sich
							nicht von alleine heraus. Eine Rechentherapie wird nur im
							Einzelunterricht angeboten.</p>
					</div>

					<div class="element col-sm-4   gall web">
						<h4>Deutschförderung</h4>
						<p>Die Förderung hat eine Dauer von 45 Minuten und richtet
							sich individuell nach den Lerndefiziten ihres Kindes. Buchen Sie
							Einzel- oder Partnerförderung.</p>
					</div>

					<div class="element col-sm-4   gall text_styles">
						<h4>Sprachförderung für Kinder ab 5 Jahren</h4>
						<p>Für Kinder ab 5 Jahren, deren Zweitsprache Deutsch ist.</p>
						<p>Ausländische Kinder haben es beim Erlernen der Deutschen
							Sprache besonders schwer. Schnell werden diese Kinder dann in der
							Schule im Fach Deutsch auffällig, weil sie sprachliche Defizite
							haben. Dies muss nicht sein. âSpielerisch Deutsch lernen"-
							unter diesem Motto bietet die Pädagogische Förderpraxis ein
							kindgerechtes Sprachprogramm an.</p>
						<p>Hier ein kleiner Auszug aus den Zielen unseres Förderplans:</p>
						<ul>
							<li>Sprechfreude wecken und stärken</li>
							<li>Motivation zur Kommunikation</li>
							<li>Schulung der Ausdrucksfähigkeit und Artikulation</li>
							<li>Erlernen und Festigen der Sprachstruktur</li>
							<li>Wortschatzbereicherung</li>
							<li>Unterstützung der Schulreife</li>
							<li>Erleichterung im Schulalltag durch erhöhte
								Sprechsicherheit und gutes Sprachverständniss</li>
						</ul>
						<p>Die Förderung geschieht gemäß dem Alters und
							Entwicklungsstand der Vor- und Grundschulkinder
							ganzheitlich-spielerisch durch eine pädagogische Fachkraft.
							Buchen Sie Einzel-, Partner- (Lernen zu zweit) oder
							Gruppenunterricht in Einheiten ü  45 Minuten.</p>
					</div>

					<div class="element col-sm-4   gall text_styles">
						<h4>Keine Angst vor Textaufgaben</h4>
						<p>Dieser Kurs ist für Schüler/innen der 3., 4. und 5.Klasse.</p>
						<p>Viele Kinder haben im Mathematikunterricht groüe Probleme
							mit den Textaufgaben.</p>
						<p>Dies muss nicht sein. Die Kinder lernen in diesem Kurs, wie
							man Textaufgaben einfacher verstehen kann und somit die
							schulische Leistung verbessert.</p>
						<ul>
							<li>Kursbeginn je nach Anmeldung</li>
							<li>10 mal ü  45 Minuten/Woche</li>
							<li>Die Gruppengröüe beträgt vier bis fünf Kinder.</li>
						</ul>
					</div>
				</div>

				<script type="text/javascript">
					jQuery(window).load(function() {
						items_set = [

						{
							category : 'mathematik',
							lika_count : '77',
							view_count : '234',
							src : 'images/prettyPhotoImages/pic9.jpg',
							title : 'Foil Mini Badges',
							content : ''
						},

						{
							category : 'polygraphy',
							lika_count : '45',
							view_count : '100',
							src : 'images/prettyPhotoImages/pic7.jpg',
							title : 'Darko â Business Card Mock Up',
							content : ''
						},

						{
							category : 'text_styles',
							lika_count : '22',
							view_count : '140',
							src : 'images/prettyPhotoImages/pic8.jpg',
							title : 'Woody Poster Text Effect',
							content : ''
						}

						];
						jQuery('.portfolio_block').portfolio_addon({
							type : 1, // 2-4 columns simple portfolio
							load_count : 3,

							items : items_set
						});
						$('#container').isotope({
							animationOptions : {
								duration : 900,
								queue : false
							}
						});
					});
				</script>
			</div>
		</div>
	</div>

	<!--ich bildergalerie-->
	<div id="bildergalerie">
		<div class="container">
			<div class="row">


				<h3>
					<br /> <br />Bildergalarie
				</h3>

				<a href="img/1.jpg" data-lightbox="roadtrip"><img
					src="img/1.jpg" style="border-radius: 15px" height="100"
					width="100" alt="" /></a> <a href="img/2.jpg" data-lightbox="roadtrip"><img
					src="img/2.jpg" style="border-radius: 15px" height="100"
					width="100" alt="" /></a> <a href="img/3.jpg" data-lightbox="roadtrip"><img
					src="img/3.jpg" style="border-radius: 15px" height="100"
					width="100" alt="" /></a> <a href="img/4.jpg" data-lightbox="roadtrip"><img
					src="img/4.jpg" style="border-radius: 15px" height="100"
					width="100" alt="" /></a> <a href="img/5.jpg" data-lightbox="roadtrip"><img
					src="img/5.jpg" style="border-radius: 15px" height="100"
					width="100" alt="" /></a> <a href="img/6.jpg" data-lightbox="roadtrip"><img
					src="img/6.jpg" style="border-radius: 15px" height="100"
					width="100" alt="" /></a> <a href="img/7.jpg" data-lightbox="roadtrip"><img
					src="img/7.jpg" style="border-radius: 15px" height="100"
					width="100" alt="" /></a>





			</div>
		</div>
	</div>

	<!--ich start-->
	<div id="ich">
		<div class="container">
			<div class="row">
				<div class="col-md-12 hr1">
					<hr />
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-md-12 wwa">
					<h3>
						<br />Über mich
					</h3>
					<h4>Mein Name ist Birgit Reimann-Groll und ich habe 2 Kinder.
						Seit 2003 arbeite ich mit groüer Freude in meiner Praxis.</h4>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="row team">
			<div class="col-md-4 b3">
				<img class="img-responsive" src="images/picTeam/picT3.png">
				<h4>Birgit Reimann-Groll</h4>
				<ul>
					<li><a href="https://www.facebook.com/birgit.reimann.35"><i
							class="fa fa-facebook-square"></i></a></li>
				</ul>
			</div>
			<div class="col-md-4 b3">
				<h4>Studium:</h4>
				<p>Freiburg 1. Staatsexamen für die Grund- und Hauptschule, mit
					dem Hauptfach der Mathematik und dem Sachunterricht</p>
				<p>Aufbaustudium der Sonderpädagogik Schwerpunkt der Geistig-
					und Sehbehinderten</p>
				<p>Nach meinem Studium habe ich als Erzieherin beim Deutschen
					Kinderschutzbund in der Kernzeitbetreuung an beiden Wieslocher
					Grundschulen gearbeitet.</p>
			</div>
			<div class="col-md-4 b3">
				<h4>
					Zusatzausbildungen:
					<p>Ausbildung zur Dyskalkulietherapeutin im
						Rechentherapiezentrum in Hirschberg.</p>
				</h4>
				<p>Die Arbeit mit Kindern hat mir schon immer viel Freude
					gemacht.</p>
				<h4>
					Mein Pädagogisches Grundprinzip heißt:
					<p>Ideal wäre es, wenn jedes Kind das "Seine" und nicht das
						gleiche wie alle bekäme ... (Pestalozzi)</p>
				</h4>
			</div>
		</div>
	</div>
	<!--contact start-->

	<div id="contact">
		<div class="line5" style="height: 30px;">
			<div class="container">
				<div class="row Ama">
					<div class="col-md-12">
						<h3>Fragen an mich oder das Team?</h3>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="rowContact">
				<div class="col-md-9 col-xs-12 forma">
					<form action="SEND ACTION TBD" method="POST">
						<input type="text" class="col-md-6 col-xs-12 name" name='name'
							placeholder='Name *' /> <input type="text"
							class="col-md-6 col-xs-12 Email" name='Email'
							placeholder='Email *' /> <input type="text"
							class="col-md-12 col-xs-12 Subject" name='Subject'
							placeholder='Betreff' onkeyup="showHint(this.value)" list=sexes />
						<datalist id=sexes>
							<option value="Anfrage">
							<option value="Information">
						</datalist>
						<p>
							Suggestions: <span id="txtHint"></span>
						</p>
						<textarea class="col-md-12 col-xs-12 Message" name='Message'
							placeholder='Nachricht *'></textarea>
						<div class="cBtn col-xs-12">
							<ul>
								<!--<li class="send"><a href="#"><i class="fa fa-share"></i>senden</a></li>-->
								<input type="submit" class="send" value="senden">
							</ul>
						</div>
					</form>
				</div>
				<div class="col-md-3 col-xs-12 cont">
					<ul>
						<li><i class="fa fa-home"></i>Zum Keitelberg 7, 69168
							Wiesloch</li>
						<li><i class="fa fa-phone"></i>06222/386112</li>
						<li><a href="#"><i class="fa fa-envelope"></i>info@pfp1-10.de</li>
						</a>
						<li><a href="https://www.facebook.com/birgit.reimann.35"><i
								class="fa fa-facebook-square"></i>Facebook</li>
						</a>
					</ul>
				</div>
			</div>
		</div>
		<div class="line6">


			<iframe
				src="http://maps.google.de/maps?hl=de&q=Zum Keitelberg 7, 69168 Wiesloch+(PFP 1-10)&ie=UTF8&t=&z=17&iwloc=B&output=embed"
				width="100%" height="550" frameborder="0" scrolling="no"
				marginheight="0" marginwidth="0" style="border: 0"></iframe>
		</div>
		<div class="lineBlack">
			<div class="container">
				<div class="row downLine">
					<div class="col-md-6 text-right dm">
						<ul id="downMenu">
							<li class="active"><a href="#home">Home</a></li>
							<li><a href="#bieten">Was bieten wir</a></li>
							<li><a href="#foerderung">Förderungen</a></li>
							<li><a href="#ich">Über mich</a></li>
							<li class="last"><a href="#contact">Kontakt</a></li>
							<li><a
								href="http://localhost/PFP1-10/login-formular.html">Login</a></li>
							<li><a>Besucherzahl gesamt: <%=hitsCount%></a></li>
							<li><a><div class="g-plusone" data-size="tall"
										data-href="https://plus.google.com/105131388230813270240/about?hl=de&amp;_ga=1.55639080.2097408583.1423662793"></div></a></li>
							<li><iframe
									src="//www.facebook.com/plugins/like.php?href=https%3A%2F%2Fwww.facebook.com%2Fpfp110&amp;width&amp;layout=box_count&amp;action=like&amp;show_faces=true&amp;share=true&amp;height=65"
									scrolling="no" frameborder="0"
									style="border: none; overflow: hidden; height: 65px;"
									allowTransparency="true"></iframe></li>
						</ul>


					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="js/jquery.prettyPhoto.js" type="text/javascript"
		charset="utf-8"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$(".bhide").click(function() {
								$(".hideObj").slideDown();
								$(this).hide(); //.attr()
								return false;
							});
							$(".bhide2").click(function() {
								$(".container.hideObj2").slideDown();
								$(this).hide(); // .attr()
								return false;
							});

							$('.heart').mouseover(
									function() {
										$(this).find('i').removeClass(
												'fa-heart-o').addClass(
												'fa-heart');
									}).mouseout(
									function() {
										$(this).find('i').removeClass(
												'fa-heart').addClass(
												'fa-heart-o');
									});

							function sdf_FTS(_number, _decimal, _separator) {
								var decimal = (typeof (_decimal) != 'undefined') ? _decimal
										: 2;
								var separator = (typeof (_separator) != 'undefined') ? _separator
										: '';
								var r = parseFloat(_number)
								var exp10 = Math.pow(10, decimal);
								r = Math.round(r * exp10) / exp10;
								rr = Number(r).toFixed(decimal).toString()
										.split('.');
								b = rr[0].replace(
										/(\d{1,3}(?=(\d{3})+(?:\.\d|\b)))/g,
										"\$1" + separator);
								r = (rr[1] ? b + '.' + rr[1] : b);

								return r;
							}

							setTimeout(function() {
								$('#counter').text('0');
								$('#counter1').text('0');
								$('#counter2').text('0');
								setInterval(
										function() {

											var curval = parseInt($('#counter')
													.text());
											var curval1 = parseInt($(
													'#counter1').text()
													.replace(' ', ''));
											var curval2 = parseInt($(
													'#counter2').text());
											if (curval <= 707) {
												$('#counter').text(curval + 1);
											}
											if (curval1 <= 12280) {
												$('#counter1').text(
														sdf_FTS((curval1 + 20),
																0, ' '));
											}
											if (curval2 <= 245) {
												$('#counter2')
														.text(curval2 + 1);
											}
										}, 2);

							}, 500);
						});
	</script>
	<script type="text/javascript">
		jQuery(document).ready(function() {
			jQuery('#menu').slicknav();

		});
	</script>

	<script type="text/javascript">
		$(document).ready(
				function() {

					var $menu = $("#menuF");

					$(window).scroll(
							function() {
								if ($(this).scrollTop() > 100
										&& $menu.hasClass("default")) {
									$menu.fadeOut('fast', function() {
										$(this).removeClass("default")
												.addClass("fixed transbg")
												.fadeIn('fast');
									});
								} else if ($(this).scrollTop() <= 100
										&& $menu.hasClass("fixed")) {
									$menu.fadeOut('fast', function() {
										$(this).removeClass("fixed transbg")
												.addClass("default").fadeIn(
														'fast');
									});
								}
							});
				});
		//jQuery
	</script>
	<script>
		/*menu*/
		function calculateScroll() {
			var contentTop = [];
			var contentBottom = [];
			var winTop = $(window).scrollTop();
			var rangeTop = 200;
			var rangeBottom = 500;
			$('.navmenu').find('a').each(
					function() {
						contentTop.push($($(this).attr('href')).offset().top);
						contentBottom.push($($(this).attr('href')).offset().top
								+ $($(this).attr('href')).height());
					})
			$.each(contentTop, function(i) {
				if (winTop > contentTop[i] - rangeTop
						&& winTop < contentBottom[i] - rangeBottom) {
					$('.navmenu li').removeClass('active').eq(i).addClass(
							'active');
				}
			})
		};

		$(document).ready(function() {
			calculateScroll();
			$(window).scroll(function(event) {
				calculateScroll();
			});
			$('.navmenu ul li a').click(function() {
				$('html, body').animate({
					scrollTop : $(this.hash).offset().top - 80
				}, 800);
				return false;
			});
		});
	</script>
	<script type="text/javascript" charset="utf-8">
		jQuery(document).ready(function() {
			jQuery(".pretty a[rel^='prettyPhoto']").prettyPhoto({
				animation_speed : 'normal',
				theme : 'light_square',
				slideshow : 3000,
				autoplay_slideshow : true,
				social_tools : ''
			});

		});
	</script>
</body>

</html>