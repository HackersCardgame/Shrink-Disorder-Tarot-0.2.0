<html>
  <head>
    <meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./small-style.css" target="_blank">


  </head>
  <body bgcolor="#FFF">

<?php
//mode: list, display, flip
   echo "../".$_GET["dir"]."/*.*<br>";
   echo "flipping=". $_GET["flipping"];
   echo "display=" . $_GET["display"];
   echo "width=" . $_GET["width"];
   echo "height=" . $_GET["height"]."<br>";

if (empty($_GET["width"])) {
 $width=240; 
}
else {
 $height=$_GET["width"];
}

if (empty($_GET["height"])) {
 $height=330; 
}
else {
 $height=$_GET["height"];
}


   $files = glob("../".$_GET["dir"]."/*.*");

  for ($i=0; $i<count($files); $i++)

{

$image = $files[$i];
$supported_file = array(
    'gif',
    'jpg',
    'jpeg',
    'png',
    'pdf',
    'svg'
);

$ext = strtolower(pathinfo($image, PATHINFO_EXTENSION));
if (in_array($ext, $supported_file)) {

if ($_GET["flipping"]!=="false") {
 echo '<iframe frameBorder="0" text-align=center height=330 width=240 src="./card.php?front='.$image .'&back=back.jpg"></iframe> ';
}

if ($_GET["flipping"]=="false") {
 echo '<a href="'.$image.'" target="_blank"><font color=red><b>'.$image.'</b></font>';}
if ($_GET["display"]=="true") {
 echo  '<iframe frameBorder="0" text-align=center height='.$height.' width='.$width.' src="'.$image.'"></iframe></a>';
}

} else {
    continue;
 }

}

?>
