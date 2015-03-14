<?php
mysql_connect("localhost", "root", "");
mysql_select_db("news");

$sql = "SELECT * FROM `news` ORDER BY `time` DESC;";
$result = mysql_query($sql);

//mysql_fetch_assoc — Liefert einen Datensatz als assoziatives Array
while ($row = mysql_fetch_assoc($result)) { ?>
    <div class="news">
        <h1><?php echo htmlentities($row['title']); ?></h1>
        <span>Geschrieben von <?php echo htmlentities($row['autor']); ?> am <?php echo date("d.m.Y, H:i", $row['time']); ?>.</span>
        <div><?php echo nl2br(htmlentities($row['beitrag'])); ?></div>
    </div>
<?php }; ?>