<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
require_once('oop.php');

$mysql = new DB_mySQL;
$mysql->connec('localhost', 'computer', 'root', '');

$mysql->query('select * from sanpham');
while($row=$mysql->fetchrow())
{
	echo $row['tensp']."<br/>";
}
$mysql->disconnect();
?>
</body>
</html>