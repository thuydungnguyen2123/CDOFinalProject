<?php session_start();
	ob_start();
//Xu ly cap nhat so luong:
if(isset($_POST['Button1']))
{
	for($i=0;$i<count($_SESSION['giohang']);$i++)
	{
		if($_POST['SL'.$i]!="")
			$_SESSION['giohang'][$i]['soluong']=$_POST['SL'.$i];
		else 
		   $_SESSION['giohang'][$i]['soluong']=1;
	}
	header("location:datbao.php");
}

//Xu ly xoa:
if(isset($_GET['xoa']))
{
	for($i=$_GET['xoa'];$i<count($_SESSION['giohang'])-1;$i++)
	{
		$j=$i+1;
		$_SESSION['giohang'][$i]=$_SESSION['giohang'][$j];
	}
	
	//xoa san pham cuoi:
	$k=count($_SESSION['giohang'])-1;
	unset($_SESSION['giohang'][$k]);
	header("location:datbao.php");
}


//Xu ly dat bao:
if(isset($_POST['dathang']))
{
	include("connect.php");
	//insert vao bang datbao:
	$madb=time();
	$ngay=date("Y-m-d",$madb);
	$sl="insert into datbao values('$madb', '$ngay', '{$_POST['hoten']}', '{$_POST['diachi']}', '{$_POST['sdt']}', '{$_POST['email']}')";
	if(mysql_query($sl))
	{
		//insert vao bang ct_datbao:
		for($i=0;$i<count($_SESSION['giohang']);$i++)
		{
			$mabao=$_SESSION['giohang'][$i]['id'];
			$gia=$_SESSION['giohang'][$i]['gia'];
			$soluong=$_SESSION['giohang'][$i]['soluong'];
			$slcon="insert into ct_datbao values('$madb','$mabao','$soluong','$gia')";
			mysql_query($slcon);
			//Co the kiem tra truong hop query that bai -> xoa cac dong trong bang ct_datbao va datbao theo $madb; break;
		}
		//huy gio hang:
		unset($_SESSION['giohang']);
		header("location:datbao.php");
	}
}

?>