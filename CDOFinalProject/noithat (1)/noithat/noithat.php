<?php 
session_start();
ob_start();
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nội Thất 4 Con Cún</title> 
<link href="css/css.css" rel="stylesheet" type="text/css" />
<link href="script/menutop/style.css" rel="stylesheet" type="text/css" />
<link href="script/sdmenu/sdmenu.css" rel="stylesheet" type="text/css" />
<link href="css/dangnhap.css" rel="stylesheet" type="text/css" />
<link href="SpryAssets/SpryMenuBarHorizontal.css" rel="stylesheet" type="text/css" />
	<link href="css/tooltip.css" rel="stylesheet" type="text/css">
	
<link href="SpryAssets/SpryTabbedPanels.css" rel="stylesheet" type="text/css" />
<!----------END Chi tiet---------->
<!--BANNER--->
<!----<link rel='stylesheet' id='camera-css'  href='script/banner/camera.css' type='text/css' media='all'> --->
<style>-
		#back_to_camera {
			clear: both;
			display: block;
			height: 80px;
			line-height: 40px;
			padding: 20px;
		}
		.fluid_container {
			margin: 0 auto;
			max-width: 1000px;
			width: 100%;
		}
</style>

    <!--///////////////////////////////////////////////////////////////////////////////////////////////////
    //
    //		Scripts
    //
    ///////////////////////////////////////////////////////////////////////////////////////////////////--> 
    

</head>
<?php
include('connect.php');
?>
<body>  
<div id="wapper"> 	 
  <div id="content">
  	<div id="top">
        <div id="logo">
            <div class="hinhlogo">
            	<span class="hinhlogo"><img src="images/LOGO.png" width="238" height="128" /></span>
            </div>
        </div>        
        <div id="menu">
        	<div id="dangnhap" align="right" style="font-family:SVN-Agency FB"> 
            <?php
			if(!isset($_SESSION["idUser"]))
			{
				
            ?> 
			            	  Chào bạn ,Bạn có thể <a href="noithat.php?page=dangnhap" class="login-window">đăng nhập</a> hoặc <a style="text-decoration:none;color:#FC0" href="noithat.php?page=dangkythanhvien" class="dangky-window">tạo tài khoản</a>
                <?php } else {
					$slavt="select * from users where idUser=".$_SESSION["idUser"];
					$kqavt=mysql_query($slavt);
					$d=mysql_fetch_array($kqavt);
					echo $d['Username'];
					?>
                <img src="images/avatar.jpg" width="58px" height="58px"/>
                
                <div><form action="logout.php" method="get">
                
                <input style="background-color:#0C3; color:#FFF;" name="" type="submit" value="Logout"/> <input name="" type="button" style="background-color:#0C3; color:#FFF;" value="sign up" onclick="location.href='noithat.php?page=dangkythanhvien'"/>
                </form>
                
                </div>
                <?php }?>                 
            </div>                    
       	  <div id="login-box" class="login-popup">  
    <a href="#" class="close"><img src="images/close_pop.png" class="btn_close" title="Đóng" alt="Close" /></a>
          <form method="post" class="signin" action="login/xulydangnhap.php">
                <fieldset class="textbox">
            	<label class="username">
                <span style="font-size:16px">Username</span>
                <input id="Username" name="Username" value="" type="text" autocomplete="on" placeholder="Username">
                </label>
                
                <label class="password">
                <span style="font-size:16px">Password</span>
                <input id="Password" name="Password" value="" type="password" placeholder="Password">
                </label>
                
                <input  class="submit button" name="Submit" type="submit" value="Đăng nhập" />               
                <input name="xuly" type="hidden" id="xuly" value="1" />
                </fieldset>
          </form>
</div>      
        
        
             			
          <ul id="MenuBar1" class="MenuBarHorizontal">
  <li><a  class="MenuBarItemSubmenu" href="noithat.php" style="font-family:SVN-Agency FB">Trang Chủ</a>  	  
  </li>  
     <li><a  class="MenuBarItemSubmenu" href="noithat.php?page=gioithieu" style="font-family:SVN-Agency FB">Giới Thiệu</a>  	  
  </li>  
      
     <li><a  class="MenuBarItemSubmenu" href="noithat.php?page=tintuc" style="font-family:SVN-Agency FB">Tin Tức</a>  	  
  </li>  
     <li><a  class="MenuBarItemSubmenu" href="noithat.php?page=huongdan" style="font-family:SVN-Agency FB">Hướng dẫn</a>  	  
  </li>  
     <li><a  class="MenuBarItemSubmenu" href="noithat.php?page=khuyenmai" style="font-family:SVN-Agency FB">Khuyến Mãi</a>  	  
  </li>  
     <li><a  class="MenuBarItemSubmenu" href="noithat.php?page=lienhe" style="font-family:SVN-Agency FB">Liên hệ</a>  	  
  </li>  
   </ul>


   
          <script type="text/javascript">
				var MenuBar1 = new Spry.Widget.MenuBar("MenuBar1", {imgDown:"../SpryAssets/SpryMenuBarDownHover.gif", imgRight:"../SpryAssets/SpryMenuBarRightHover.gif"});
			</script>
        </div>         
    </div>   
  	<div id="lefcontent">   
        <div class="timkiem">
                <div class="tieude-timkiem">Tìm kiếm</div>
                 <form name="form1" method="get" action="noithat.php">
  <table width="100%" border="0" style="font-family:SVN-Agency FB">
    <tr>
      <td style="color:#CCC" >Từ khóa</td>
      <td style="text-align:left"><input type="text" name="tukhoa" id="tukhoa" autocomplete="on" placeholder="Nhập vào từ khóa" value="<?php if(isset($_GET['tukhoa'])) echo $_GET['tukhoa']?>"></td>
    </tr>
    <tr>
      <td style="color:#CCC">Giá từ</td>
      <td><select name="min" id="min" style="width:100px">
      <?php 
	  for($i=1;$i<=20;$i++)
	  {
		  $gia=$i*1000000;
	  ?>        
            	<option value="<?php echo $gia;?>" <?php if(isset($_GET['min']) && $_GET['min']==$gia) echo "selected='selected'"?>><?php echo $i;?> Triệu</option>
      <?php }?>
            </select></td>
    </tr>
    <tr>
      <td style="color:#CCC">Đến</td>
      <td><select name="max" id="max" style="width:100px">
            	<?php 
	  for($i=40;$i>=1;$i--)
	  {
		  $gia=$i*1000000;
	  ?>        
            	<option value="<?php echo $gia;?>" <?php if(isset($_GET['max']) && $_GET['max']==$gia) echo "selected='selected'"?>><?php echo $i;?> Triệu</option>
      <?php }?>
            </select></td>
    </tr>
    <tr>
      <td ><input type="hidden" id="p" value="timkiem" /></td>
      <td><input type="submit"  id="btntim" value="   Tìm   "></td>
    </tr>
  </table>
</form>
        </div>
        <div id="danhmucsanpham">
                <div class="tieude-timkiem">Danh mục sản phẩm</div>
                <?php
				$sl="select * from loaisp";
				$kq=mysql_query($sl);
				while($dlsp=mysql_fetch_array($kq))
				{
                ?>
                 	<a title="<?php echo $dlsp['TenLoai']?>" style="display:block;" class="dongssanpham" href="noithat.php?idLoai=<?php echo $dlsp['idLoai']?>"><?php echo $dlsp['TenLoai']?></a>
				<?php }?>
          
        </div>
         <div id="hotro">     	
                <div class="tieude-timkiem">Hỗ trợ</div>
                <div id="hinhhotro"><a href="https://www.facebook.com/BDOPDG"><img src="facebook.jpg" height="100" width="230"/></a>  </div>    	
         </div>  
    </div>	
    <div id="right-content">
          	<div id="banner">        
        	<div class="fluid_container">
        <div class="camera_wrap camera_azure_skin" id="camera_wrap_1">
                   <?php
			$sl="select * from banner";
			$kqbn=mysql_query($sl);
			while($dbn=mysql_fetch_array($kqbn))
{		
			?>
                    <div data-thumb="" data-src="upload/hinhsilede/banner5.jpg">
                    
                <div class="camera_caption fadeFromBottom" align="center">
                   <a href="noithat.php?page=<?php echo $dbn['TenBanner']?>"><img src="upload/hinhsilede/<?php echo $dbn['UrlHinh']?>" width="712" height="350"/>   </a>            </div>
            </div> 
                   <?php }?> 
                <script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("camera_caption fadeFromBottom");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>    
        </div><!-- #camera_wrap_1 -->    	
</div><!-- .fluid_container -->
    

           
        </div>
        <div id="noidung">
        	<p>
              
<table width="100%" border="0" style="float:left" >
<?php
if(isset($_GET['tukhoa']))
{
	?>
	<table width="100%" border="0" style="float:left" >

	<tr>  
    	<td >
   			<div class="tieude-sanpham">
				<h3>Sản phẩm Tìm Kiếm</h3>
			</div>
        </td>
    </tr>
	<tr>
    <?php
	if(isset($_GET['tukhoa'])!="")
	{
		$sl="SELECT * FROM `sanpham` where TenSP like '%{$_GET['tukhoa']}%'  and Gia>={$_GET['min']} and Gia<={$_GET['max']}";
	}
	else
	{
		$sl="SELECT * FROM `sanpham` where Gia>={$_GET['min']} and Gia<={$_GET['max']}";
	}
		$kq=mysql_query($sl);
		$sp=8;
		$tsp=mysql_num_rows($kq);
		$tst=ceil($tsp/$sp);
		if(isset($_GET['trang']))
		$page=$_GET['trang'];
		else
		$page=1;
		$vt=($page-1)*$sp;
	if(isset($_GET['tukhoa']))
	{
		
		$sl="SELECT * FROM `sanpham` where TenSP like '%{$_GET['tukhoa']}%'  and Gia>={$_GET['min']} and Gia<={$_GET['max']} limit $vt,$sp";
	}
	else
	{
		$sl="SELECT * FROM `sanpham` where Gia>={$_GET['min']} and Gia<={$_GET['max']} limit $vt,$sp";
	}
	$tukhoa=$_GET['tukhoa'];
	$kq=mysql_query($sl);
	while($d=mysql_fetch_array($kq))
	{ 
		
	?>
    
    	<td style="float:left; margin-left:5px;margin-right:5px;margin-bottom:10px" width="162px" height="280" >
        	<table width="162" border="0" cellspacing="3" cellpadding="3" align="center" >
           <tr>
                <td colspan="2" height="40" style="text-align:center">
                    <a href="noithat.php?page=chitietsanpham&idSP=<?php echo $d['idSP']?>" class="tensp"> 
                     <?php echo $d['TenSP'];?></a>
                 <img src="images/news.gif" width="20" height="12" /></td>
           </tr>
           <tr>
                <td colspan="2" align="center">
            	<div class="thumbnail-item">
               <a href="noithat.php?page=chitietsanpham&idSP=<?php echo $d['idSP']?>"><img src="imagesnoithat/<?php echo $d['UrlHinh']?>" 00="" align="center" width="156" height="128" border="0" title=" <?php echo $d['TenSP']?>" alt=" <?php echo $d['TenSP']?>" id="img_preview">
                </a>
                <div class="tooltip">
                 <img src="imagesnoithat/<?php echo $d['UrlHinh']?>" alt="" width="350" height="300" />
				</div> 
				</div>
                 </td>
           </tr>
           <tr>
                <td colspan="2" align="center" height="25">         
                    <span class="giaban">
                        <?php echo number_format($d['Gia'])?>			
                    </span>            
            
             	</td>
           </tr>              
           <tr>
                    <td width="140"  height="60x" >             

                    	<div id="cart"><a class="dathang" idSp="686"href="noithat.php?page=kiemtra_dangnhap&idSP=<?php echo $d['idSP']?>">Đặt mua</a></div>       		        
                    </td>
           </tr>            	
         </table>
	</td>
    	<?php } ?>
       
        </tr>
</table>
<p style="text-align:center;"> 
<?php
if(!isset($_GET['page']) && !isset($_GET['idLoai']))
{
	for($i=1; $i<=$tst; $i++)
	{
	?>
	
	<a href="<?php if(isset($_GET['tukhoa']))echo "noithat.php?tukhoa=".$tukhoa."&min=".$_GET['min']."&max=".$_GET['max']."&trang=".$i;
	
	?>" style="background-color:<?php if(!isset($_GET['trang'])||$_GET['trang']!=$i) echo "#0C3"; else if($_GET['trang']==$i) echo "#FFF";?>; color:<?php if(!isset($_GET['trang'])||$_GET['trang']!=$i) echo "#FFF"; else if($_GET['trang']==$i) echo "#0C3";?>; width:100px; text-decoration:none;" onclick="document.form1.submit()"><?php if($i>=10) echo $i; else echo "0".$i;?></a>
<?php } }?>
</p>
<?php } else {?>
<?php ?>
<?php 
if(isset($_GET['page']))
	{
		
		switch($_GET['page'])
		{
			case 'gioithieu': include('pages/gioithieu.php'); break;
			case 'tintuc': include('pages/tintuc.php'); break;
			case 'huongdan': include('pages/huongdan.php'); break;
			case 'lienhe': include('pages/lienhe.php'); break;
			case 'khuyenmai': include('pages/khuyenmai.php'); break;
			case 'chitietsanpham': include('pages/chitietsanpham.php'); break;
			case 'chitiettintuc': include('pages/chitiettintuc.php'); break;
			case 'lienhedathang': include('giohang/lienhedathang.php'); break;
			case 'dangkythanhvien': include('login/dangkythanhvien.php'); break;
			case 'dangnhap': include('login/dangnhap.php'); break;
			case 'giohang': include('giohang/giohang.php');break;
			case 'kiemtra_dangnhap': include('kiemtra_dangnhap.php');break;
		}
		
	}
	else
	{
?>
	<tr>  
    	<td >
   			<div class="tieude-sanpham">
				<h3>Sản phẩm mới nhất</h3>
			</div>
        </td>
    </tr>
	<tr>
    <?php
	if(isset($_GET['idLoai']))
	{
		$idLoai=$_GET['idLoai'];
		$slsp="select * from sanpham where idLoai=$idLoai";
	}
	else
	{
		$slsp="select * from sanpham order by idLoai DESC";
	}
	$kqsp=mysql_query($slsp);
	$sp=8;
	$tsp=mysql_num_rows($kqsp);
	$tst=ceil($tsp/$sp);
	if(isset($_GET['trang']))
  	$page=$_GET['trang'];
  	else
  	$page=1;
  	$vt=($page-1)*$sp;
	if(isset($_GET['idLoai']))
	{
		$idLoai=$_GET['idLoai'];
		$slsp="select * from sanpham where idLoai=$idLoai limit $vt,$sp";
	}
	else
	{
		$slsp="select * from sanpham order by idLoai DESC limit $vt,$sp";
	}
	$kqsp=mysql_query($slsp);
	while($dsp=mysql_fetch_array($kqsp))
	{ 
	?>
    	<td style="float:left; margin-left:5px;margin-right:5px;margin-bottom:10px" width="162px" height="280" >
        	<table width="162" border="0" cellspacing="3" cellpadding="3" align="center" >
           <tr>
                <td colspan="2" height="40" style="text-align:center">
                    <a href="noithat.php?page=chitietsanpham&idSP=<?php echo $dsp['idSP']?>" class="tensp"> 
                     <?php echo $dsp['TenSP']?></a>
                 <img src="images/news.gif" width="20" height="12" /></td>
           </tr>
           <tr>
                <td colspan="2" align="center">
            	<div class="thumbnail-item">
               <a href="noithat.php?page=chitietsanpham&idSP=<?php echo $dsp['idSP']?>"><img src="imagesnoithat/<?php echo $dsp['UrlHinh']?>" 00="" align="center" width="156" height="128" border="0" title=" <?php echo $dsp['TenSP']?>" alt=" <?php echo $dsp['TenSP']?>" id="img_preview">
                </a>
                <div class="tooltip">
                 <img src="imagesnoithat/<?php echo $dsp['UrlHinh']?>" alt="" width="350" height="300" />
				</div> 
				</div>
                 </td>
           </tr>
           <tr>
                <td colspan="2" align="center" height="25">         
                    <span class="giaban">
                        <?php echo number_format($dsp['Gia'])?>			
                    </span>            
            
             	</td>
           </tr>              
           <tr>
                    <td width="140"  height="60x" >             

                    	<div id="cart"><a class="dathang" idSp="686"href="noithat.php?page=kiemtra_dangnhap&idSP=<?php echo $dsp['idSP']?>">Đặt mua</a></div>       		        
                    </td>
           </tr>            	
         </table>
	</td>
    	<?php } }?>
       
        </tr>
</table>
<?php }?>
<p style="text-align:center;"> 
<?php
if(!isset($_GET['page']) && !isset($_GET['tukhoa']) && !isset($_GET['tukhoa']))
{
	for($i=1; $i<=$tst; $i++)
	{
	?>
	
	<a href="<?php if(isset($_GET['idLoai']))echo "noithat.php?trang=".$i."&idLoai=".$_GET['idLoai'];
	else echo "noithat.php?trang=".$i;
	?>" style="background-color:<?php if(!isset($_GET['trang'])||$_GET['trang']!=$i) echo "#0C3"; else if($_GET['trang']==$i) echo "#FFF";?>; color:<?php if(!isset($_GET['trang'])||$_GET['trang']!=$i) echo "#FFF"; else if($_GET['trang']==$i) echo "#0C3";?>; width:100px; text-decoration:none;"><?php if($i>=10) echo $i; else echo "0".$i;?></a>
<?php } }?>
</p>

        	</p>
      </div>
          </div>
    <div class="clear"></div>
    <div id="footer">
		<ul>
       
     <li><a href="noithat.php">Trang Chủ</a></li>  
     <li><a href="noithat.php?page=gioithieu">Giới Thiệu</a></li>  
       
     <li><a href="noithat.php?page=tintuc">Tin Tức</a></li>  
     <li><a href="noithat.php?page=huongdan">Hướng dẫn</a></li>  
     <li><a href="noithat.php?page=khuyenmai">Khuyến Mãi</a></li>  
     <li><a href="noithat.php?page=lienhe">Liên hệ</a></li>  
                    
</ul>

 
        <div class="clear"></div>
        <div id="noidungfooter">
        	<p>Công Ty TNHH Nội Thất 4 CON CÚN</p>
        	<p>Địa chỉ: 288 - An Dương Vương -Quận 5 - TP.HCM</p>
<p>Điện thoại: 01655200012</p>
        </div>
    </div>
  `</div>
<div id="chuchay">
	 <marquee direction="right" onmousemove="this.stop();" onmouseout="this.start();" scrollamount="3" scrolldelay="10">
     <?php
	 $sllsp="select * from loaisp";
	 $kqlsp=mysql_query($sllsp);
	 while($dlsp=mysql_fetch_array($kqlsp))
	 {
     ?>
          <font color="#FFFFFF">|| </font> <a href="noithat.php?idLoai=<?php echo $dlsp['idLoai']?>"><?php echo $dlsp['TenLoai']?></a>
	   <?php }?>   
	    </marquee>    
   
</div>   
<style type="text/css">  
    #co453569{display:block; margin:0; padding:0; background-color:#CCC; border-style:solid; border-width:0.5px; border-color:#111 #999 #999 #111; line-height:1.6em; overflow:hidden;border-left:solid 5px #000;border-top:solid 5px #000;color:#000;font: 12px Arial, Helvetica, sans-serif; color:#666; position:fixed; _position: absolute; right:0; bottom:0 }
  </style>            
        <div id="co453569" style="height:40px;width:450px"> 
          <!-- code ads -->
          <img src="images/cart-icon.png" width="30" height="25" style="margin-left:10px;margin-top:5px" />          
           <div id="giohang" style="margin-top:-20px;margin-left:45px" >         
          
		  ﻿
	

    <span style="font-size:14px"><font color="#000000">Số sản phẩm:</font><font color="#FF0000">
    <?php 
	if(isset($_SESSION['idUser']) && isset($_SESSION['soluong']) && isset($_SESSION['tongtien']))
	{
		echo $_SESSION['soluong'];
	}
	else {
	?>
          0  <?php }?>  </font></span>
    
    
    
    <span style="font-size:14px"><font color="#000000">Tổng tiền:</font><font color="#FF0000">
     <?php 
	if(isset($_SESSION['idUser']) && isset($_SESSION['soluong']) && isset($_SESSION['tongtien']))
	{
		echo number_format($_SESSION['tongtien']);
	}
	else {
	?>
    0   <?php }?> </font></span>
    
    <span style="font-size:14px"> - <a style="text-decoration:none" href="noithat.php?idUser=<?php echo $_SESSION['idUser']?>&page=giohang&idSP=<?php echo $_SESSION['idSP']?>"><font color="#000000">Giỏ hàng</font></a></span>  
    
          </div>
          <!-- code ads -->   
      </div>   

</div>
<style type="text/css">
#toppage1k {
	width:100px;
	background:#F4FFBF;
	border:1px solid #ccc;
	text-align:center;
	position:fixed;
	bottom:10px;
	right:10px;
	cursor:pointer;
	color:#666;
	text-decoration:none;
	padding-top: 5px;
	padding-right: 5px;
	padding-bottom: 5px;
	padding-left: 5px;
	margin-bottom: 40px;
}
</style>

<a href="noithat.php" id="toppage1k"><img src="images/nutchuyen.png" width="16" height="16" />Về Trang Chủ</a>
<script type='text/javascript'>
//<![CDATA[
$(function(){$.fn.scrollToTop=function(){$(this).hide().removeAttr("href");if($(window).scrollTop()!="0"){$(this).fadeIn("slow")}var scrollDiv=$(this);$(window).scroll(function(){if($(window).scrollTop()=="0"){$(scrollDiv).fadeOut("slow")}else{$(scrollDiv).fadeIn("slow")}});$(this).click(function(){$("html, body").animate({scrollTop:0},"slow")})}});$(function() {
$("#toppage1k").scrollToTop();});
//]]>
</script>
</body>
</html>