<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
<?php
$conn = oci_connect('system', 'oracle', 'localhost/ocl', 'AL32UTF8');
if(!$conn)
{
	$e= oci_error();
	trigger_error(htmlentities($e['message'], ENT_QUOTES), E_USER_ERROR );
	
}
else
echo "ket noi thanh cong";
?>
</body>
</html>