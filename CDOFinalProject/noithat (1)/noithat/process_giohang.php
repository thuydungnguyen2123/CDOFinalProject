<?php session_start(); ob_start();
//Xu ly cap nhat gio hang:
if(isset($_POST['Button1']))
{
	$_SESSION['idSP']=$_POST['idSP'];
	$_SESSION['soluong']=0;
	//$_SESSION['tongtien']=$_POST['tongtien'];
	$_SESSION['tongtien']=0;
	for($i=0;$i<count($_SESSION['giohang']);$i++)
	{
		$_SESSION['tongtien']+=$_POST['tong'.$i];
		$_SESSION['soluong']+=$_POST['SL'.$i];
		if($_POST['SL'.$i]=="")  $_SESSION['giohang'][$i]['soluong']=1;
		else $_SESSION['giohang'][$i]['soluong']=$_POST['SL'.$i];
	}
	
	header("location:noithat.php?idUser=".$_SESSION['idUser']."&page=giohang&idSP=".$_POST['idSP']);
}


//Xu ly xoa 1 sp trong gio hang:
if(isset($_GET['xoa']))
{
	for($i=$_GET['xoa'];$i<count($_SESSION['giohang'])-1;$i++)
	{
		$j=$i+1;
		$_SESSION['giohang'][$i]=$_SESSION['giohang'][$j];
	}
	$k=count($_SESSION['giohang'])-1;
	unset($_SESSION['giohang'][$k]);
	header("location:noithat.php?idUser=".$_SESSION['idUser']."&page=giohang&idSP=".$_GET['idSP']);
	
}

?>