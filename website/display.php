<html>
  <head>
    <meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="./small-style.css" target="_blank">


  </head>
  <body bgcolor="#FFF">

<?php

   echo "../".$_GET["dir"]."/*.*<br>";
   echo "flipping=". $_GET["flipping"]."<br>";

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
//    print $image ."<br />";

//    echo '<a href="./'.$image .'" target=_blank><img style="margin:5px" width=250 src="'.$image .'" ></a>';

if ($_GET["flipping"]!=="false") {
 echo '<iframe frameBorder="0" text-align=center height=330 width=240 src="./card.php?front='.$image .'&back=back.jpg"></iframe> ';
}

if ($_GET["flipping"]=="false") {
 echo '<iframe frameBorder="0" text-align=center height=330 width=240 src="'.$image.'"></iframe> ';
}

} else {
    continue;
 }

}

?>
