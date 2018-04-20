<?php
ob_start();
$idSP=$_POST['idSP'];
$hoten=$_POST['name'];
$email=$_POST['email'];
$noidung=$_POST['message'];
include('connect.php');
$sl="insert into sanpham_comment values(NULL,$idSP,'$hoten','$email','$noidung')";
if(mysql_query($sl))
{
	header("location:noithat.php?page=chitietsanpham&idSP=".$idSP);
}
else echo $sl;
?>