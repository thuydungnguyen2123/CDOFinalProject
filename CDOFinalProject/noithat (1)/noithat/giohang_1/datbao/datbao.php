<?php
session_start();
if(!isset($_SESSION['somathang']))$_SESSION['somathang']=0;
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Untitled Document</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
}
.style1 {
	color: #0000FF;
	font-weight: bold;
}
.style2 {color: #FF0000}
.style3 {
	color: #000066;
	font-weight: bold;
}
.style5 {color: #000099; font-weight: bold; }
-->
</style></head>

<body>
<div align="center"><font size="4" color="#0000ff"><b>Đăng Ký Đặt Báo</b></font></div>
<form name="f" method="post" action="">
<table width="445" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="145"><span class="style5">Loại Báo</span></td>
    <td width="300">
      <select name="loaibao">
	  <?php
	  	include("connect.php");	
		$sql="select * from loaibao";
		$kq=mysql_query($sql);
		while($d=mysql_fetch_array($kq)) 
			{
		?>
		<option value="<?php echo $d["mabao"]; ?>"><?php echo $d["tenbao"]; ?></option>
		<?php	}  ?>
      </select>    </td>
  </tr>
  <tr>
    <td width="145"><span class="style5">Số Lượng</span></td>
    <td width="300">
      <input type="text" name="soluong" size="5"  value="1">    </td>
  </tr>
  <tr>
    <td colspan="2">
      <div align="center">
        <input name="Button" type="submit" class="style3" value="Đưa Vào Giỏ Hàng">
      </div>    </td>
  </tr>
</table>
</form>


<?php
//Them vao gio hang:

if(isset($_POST['loaibao']))
{
	//Kiem tra sp co trong gio hang chua:
	$kt=0; //gia su kt=0 la chua co sp can them
	for($i=1;$i<=$_SESSION['somathang'];$i++)
	{
		if($_POST['loaibao']==$_SESSION['id'.$i])
		{
			$_SESSION['soluong'.$i]+=$_POST['soluong'];
			$kt=1; //sp can them da co roi
			break;
		}
	}
	
	if($kt==0){
		$_SESSION['somathang']++;
		$k=$_SESSION['somathang'];
		//lay thong tin sp tu csdl:
		$kq=mysql_query("select * from loaibao where mabao='{$_POST['loaibao']}'");
		$d=mysql_fetch_array($kq);
		//luu vao session
		$_SESSION['id'.$k]=$d['mabao'];
		$_SESSION['tenbao'.$k]=$d['tenbao'];
		$_SESSION['gia'.$k]=$d['gia'];
		$_SESSION['soluong'.$k]=$_POST['soluong'];
	}
}







if($_SESSION['somathang']>0){
?>
<form name="f2" method="post" action="process.php">
<table width="495" border="1" align="center" cellpadding="0" cellspacing="0"  bordercolorlight="#FFFF00">
  <tr bgcolor="#CCFFCC">
    <td colspan="6"><div align="center" class="style3">Danh Sách Các Loại Báo Cần Đặt</div></td>
  </tr>
  <tr bgcolor="#CCFFCC">
    <td width="45"><div align="center" class="style2"><strong>STT</strong></div></td>
    <td width="150"><div align="center" class="style2"><strong>Tên Báo</strong></div></td>
    <td width="75"><div align="center" class="style2"><strong>Giá</strong></div></td>
    <td width="75"><div align="center" class="style2"><strong>Số Lượng</strong></div></td>
    <td width="100"><div align="center" class="style2"><strong>Thành Tiền</strong></div></td>
    <td width="50"><div align="center" class="style2"><strong>Xóa</strong></div></td>
  </tr>
<?php
$tong=0;
for($i=1;$i<=$_SESSION['somathang'];$i++)
{
?>
  <tr>
    <td width="45"><div align="center"><?php echo $i;?></div></td>
    <td width="175"><div align="center"><?php echo $_SESSION['tenbao'.$i];?></div></td>
    <td width="50"><div align="right"><?php echo $_SESSION['gia'.$i];?></div></td>
    <td width="75"><div align="center"><input type="text" size="5" name="SL<?php echo $i;?>" value="<?php echo $_SESSION['soluong'.$i];?>"></div></td>
    <td width="100"><div align="right"><?php echo $_SESSION['gia'.$i]*$_SESSION['soluong'.$i];?></div></td>
    <td width="50"><div align="center"><a href="process.php?xoa=<?php echo $i;?>">xóa</a></div></td>
  </tr>
<?php }?>
<tr>
<td colspan="6" align="right">
Tong Cong Tien: 1200 VND
</td>
</tr>
</table>

<div align="center">
  <input name="Button1" type="submit" class="style3" value="Cập Nhật">
  &nbsp;
  <input name="Button2" type="button" class="style3"  value="Đặt Báo">
</div>
</form>
<?php }?>
</body>
</html>
