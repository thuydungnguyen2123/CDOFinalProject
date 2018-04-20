<style>
.ab a:hover{
	background-color:#0F3;
	
}
</style>
<?php
if(isset($_SESSION["idUser"]))
{
	header("location:noithat.php?idUser=".$_SESSION["idUser"]."&page=giohang&idSP=".$_GET['idSP']);
}
else
{
?>
<p style="color:#FFF; font-size:20px;">Bạn vui lòng <span class="ab" style=" font-size:25px;"><a href="noithat.php?page=dangnhap" style="text-decoration:none; color:#FF0;">Đăng Nhập</a></span> trước khi mua hàng. Nếu Chưa có tài khoản thì hãy Đăng Ký tại <span class="ab" style="font-size:25px;"><a href="noithat.php?page=dangkythanhvien" style="text-decoration:none; color:#FF0;">Đây.</a></span></p>
<?php }?>