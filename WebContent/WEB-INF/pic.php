<?php
Header ( "Content-Type: image/png" );
// Hier wird der Header gesendet, der sp�ter die Bilder "rendert" ausser png kann auch jpeg dastehen
$width = 500; // Sp�ter die Breite des Rechtecks
$height = 200; // Sp�ter die H�he des Rechtecks
$img = ImageCreate ( $width, $height ); // Hier wird das Bild einer Variable zu gewiesen
$black = ImageColorAllocate ( $img, 0, 0, 0 ); // Hier wird der Variable $black die Farbe schwarz zugewiesen
                                            // Die drei nullen bestehen aus den RGB-Parametern. 255, 0, 0 w�re z.B. rot. ($img muss am Anfang stehen)
ImageFill ( $img, 0, 0, $black ); // Hier wird mit ImageFill() das Bild gef�llt an den Koordinaten 0 und 0 mit der Variable $black, also Schwarz
ImagePNG ( $img ); // Hier wird das Bild PNG zugewiesen
?>