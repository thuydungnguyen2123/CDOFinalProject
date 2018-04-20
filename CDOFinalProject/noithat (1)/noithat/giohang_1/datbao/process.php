<?php session_start(); ob_start();
//Xu ly cap nhat gio hang:
if(isset($_POST['Button1']))
{
	for($i=1;$i<=$_SESSION['somathang'];$i++)
	{
		if($_POST['SL'.$i]=="")  $_SESSION['soluong'.$i]=1;
		else $_SESSION['soluong'.$i]=$_POST['SL'.$i];
	}
		
	header("location:datbao.php");
}


//Xu ly xoa 1 sp trong gio hang:
if(isset($_GET['xoa']))
{
	for($i=$_GET['xoa'];$i<$_SESSION['somathang'];$i++)
	{
		$j=$i+1;
		$_SESSION['id'.$i]=$_SESSION['id'.$j];
		$_SESSION['tenbao'.$i]=$_SESSION['tenbao'.$j];
		$_SESSION['gia'.$i]=$_SESSION['gia'.$j];
		$_SESSION['soluong'.$i]=$_SESSION['soluong'.$j];
	}
	$k=$_SESSION['somathang'];
	unset($_SESSION['id'.$k]);
	unset($_SESSION['tenbao'.$k]);
	unset($_SESSION['gia'.$k]);
	unset($_SESSION['soluong'.$k]);
	$_SESSION['somathang']--;
	header("location:datbao.php");
	
}

?>