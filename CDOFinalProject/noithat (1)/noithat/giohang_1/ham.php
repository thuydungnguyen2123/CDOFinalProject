<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<?php
function tao_bang1($m, $n)
{
	?>
	<table width="200" border="1">
    <?php
	for($i=1;$i<=$m;$i++)
	{ 
	?>
  <tr>
  	<?php
	for($j=1;$j<=$n;$j++)
	{
    ?>
    <td>&nbsp;</td>
    <?php }?>
  </tr>
  <?php }?>
</table>
<?php
}
?>

<?php
function tao_bang2($m, $n)
{
  $tam.="<table width='200' border='1'>";
  for($i=1;$i<=$m;$i++)
	{
		$tam.="<tr>";
		for($j=1;$j<=$n;$j++)
		{
		$tam.="<td>&nbsp;</td>";
		}
		$tam.="</tr>"; 
	}
	$tam.="</table>";
	return $tam;
}
?>
<body>
<?php
tao_bang1(4,5);
echo "<br />";
echo tao_bang2(5,7);
?>
</body>
</html>