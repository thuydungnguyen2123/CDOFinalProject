<?php
session_start();
ob_start();
$_SESSION['caunoi']="";
include('connect.php');
if(isset($_POST['btnThanhToan']))
{
	$idSP=$_POST['idSP'];
	$ThoiDiemDatHang=$_POST['ThoiDiemDatHang'];
	$TenNguoiNhan=$_POST['TenNguoiNhan'];
	$DiaDiemGiaoHang=$_POST['DiaDiemGiaoHang'];
	$GhiChu=$_POST['GhiChu'];
	$sl="insert into donhang values(NULL,$idSP,'$ThoiDiemDatHang','$TenNguoiNhan','$DiaDiemGiaoHang',1,'$GhiChu')";
	if(mysql_query($sl))
	{
		$_SESSION['caunoi']="bạn đã đăng nhập thành công! chúng tôi sẽ sớm liên hệ với bạn";
		header("location:noithat.php?page=lienhedathang&idSP=".$idSP);
	}
	else
	
	echo $sl;
	
}
?>