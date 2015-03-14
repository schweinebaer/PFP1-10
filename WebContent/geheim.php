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

<?php
if (isset($_POST['submit'])) {
    mysql_connect("localhost", "root", "");
    mysql_select_db("user");
    
    $author = trim(escape($_POST['author']));
    $title  = trim(escape($_POST['title']));
    $news   = trim(escape($_POST['news']));
    
    $sql = "INSERT INTO `news` (`time`, `author`, `title`, `news`)\n".
           "VALUES (UNIX_TIMESTAMP(), '".$author."', '".$title."', '".$news."');";
    mysql_query($sql) or exit("Konnte Eintrag nicht vornehmen!");
}


function escape($str) {
    if (!get_magic_quotes_gpc()) {
        $str = addslashes($str);
    }
    
    return $str;
}
?>

<form method="post" action="">
<div id="news_add">
    <label for="author">Autor</label>
    <input type="text" name="author" id="author" size="40" /><br />
    
    <label for="title">Titel</label>
    <input type="text" name="title" id="title" size="40" /><br />
    
    <label for="news">Beitrag</label>
    <textarea name="news" id="news" cols="40" rows="10"></textarea><br />
    
    <input type="submit" name="submit" value="News speichern" />
</div>
</form>