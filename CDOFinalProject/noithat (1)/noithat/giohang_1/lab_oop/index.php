<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>
<?php
include("abc.php");
//khoi tao 1 doi tuong;
//$tenbien= new ten_doituong;
$cun1=new concun;

//$cun1->maulong="Den";
echo $cun1->maulong;


$cun1->datten("Bi Bi");
$cun1->inten();
unset($cun1);
echo "<br/>";
$cun2=new concun;
$cun2->datten("Bo Bo");
$cun2->inten();

?>


</body>
</html>