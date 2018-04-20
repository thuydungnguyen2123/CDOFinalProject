<?php 

	$sl="select * from sanpham where idSP={$_GET['idSP']}";
	$kq=mysql_query($sl);
	$chitietsp=mysql_fetch_array($kq);
	
?>

<script src="SpryAssets/SpryTabbedPanels.js" type="text/javascript"></script>

<table width="100%" style="color:#CCC;float:left">
  <tr >
    <td colspan="3">
    	<div class="tieude-sanpham">
				<h3><span>Sản phẩm <?php echo $chitietsp['TenSP'] ?></span></h3>
		</div>
    </td>
  </tr>
  <tr>
    <td width="20%" rowspan="6" align="center" style="margin-left:10px"><img src="imagesnoithat/<?php echo $chitietsp['UrlHinh'] ?>" width="187" height="179" /></td>
    <td colspan="2" style="font-size:18px;color:#F90;text-transform:uppercase;text-align:left;padding-left:150px"><?php echo $chitietsp['TenSP'] ?></td>
  </tr>
  <tr>
    <td width="20%" style="text-align:left;padding-left:10px" >Loại sản phẩm</td>
    <?php
	$sll="select * from loaisp where idLoai=".$chitietsp['idLoai'];
	$kql=mysql_query($sll);
	$dl=mysql_fetch_array($kql);
    ?>
    <td width="60%" style="text-align:left;padding-left:10px"><?php echo $dl['TenLoai'] ?></td>
  </tr>
  <tr>
    <td style="text-align:left;padding-left:10px">Nhà sản xuất</td>   
    <td style="text-align:left;padding-left:10px"><?php echo $chitietsp['NhaSX'] ?></td>
  </tr>
  <tr>
    <td style="text-align:left;padding-left:10px">Thời gian bảo hành</td>
    <td style="text-align:left;padding-left:10px"><?php echo $chitietsp['BaoHanh'] ?> tháng</td>
  </tr>
  <tr>
    <td style="text-align:left;padding-left:10px">Giá bán</td>
    <td style="text-align:left;padding-left:10px;font-size:20px"><font color="#FF0000"><?php echo number_format($chitietsp['Gia']) ?></font> VNĐ</td>
  </tr>
  <tr>
    <td colspan="2" style="text-align:left;padding-left:10px">    

    <div id="cart"><a class="dathang" idSp="<?php echo $row_spmoi['idSP'] ?>"href="noithat.php?page=kiemtra_dangnhap&idSP=<?php echo $chitietsp['idSP']?>">Đặt mua</a></div>  
    
    </td>
  </tr>
</table>
<div class="clear"></div>
<div class="gachchan"></div>
<div class="clear"></div>
<table width="100%" border="0" style="margin-top:20px;color:#FFF;float:left">
  <tr>
    <td style="text-align:left;padding-left:20px"></td>
  </tr>
  <tr>
    <td style="text-align:center;padding-top:10px;padding-bottom:10px"><img src="imagesnoithat/<?php echo $chitietsp['UrlHinh'] ?>" width="559" height="301" /></td>
  </tr>
</table>
<div id="tabchitiet" style="float:left">
  <div id="TabbedPanels1" class="TabbedPanels">
    <ul class="TabbedPanelsTabGroup">
      <li class="TabbedPanelsTab" tabindex="0">Mô tả</li>
      <li class="TabbedPanelsTab" tabindex="0">Bài viết</li>
    </ul>
    <div class="TabbedPanelsContentGroup">
      <div class="TabbedPanelsContent">
      	 
            <table width="698px" border="1" cellspacing="0" >
                  <tr>
                    <td colspan="2" style="text-align:center;font-size:24px">Thông số chi tiết <?php echo $chitietsp['TenSP']?></td>
                  </tr>
                  <tr>
                    <td width="35%" style="text-align:left;padding-left:10px">Chất liệu</td>
                    <td width="65%" style="text-align:left;padding-left:10px"><?php echo $chitietsp['ChatLieu'] ?></td>
                  </tr> 
                  <tr>
                    <td style="text-align:left;padding-left:10px">Kích thước</td>
                    <td style="text-align:left;padding-left:10px"><?php echo $chitietsp['KichThuoc'] ?></td>
                  </tr>
                  <tr>
                    <td style="text-align:left;padding-left:10px">Màu sắc</td>
                    <td style="text-align:left;padding-left:10px"><?php echo $chitietsp['MauSac'] ?></td>
                  </tr>
                  <tr>
                    <td style="text-align:left;padding-left:10px">Công nghệ sản xuất</td>
                    <td style="text-align:left;padding-left:10px"><?php echo $chitietsp['CongNghe']; ?></td>
                  </tr>
                  <tr>
                    <td style="text-align:left;padding-left:10px">Tiêu chuẩn kỹ thuật</td>
                    <td style="text-align:left;padding-left:10px"><?php echo $chitietsp['TieuChuanKiThuat'];?></td>
                  </tr>
                  <tr>
                    <td style="text-align:left;padding-left:10px">Ưu nhược điểm</td>
                    <td style="text-align:left;padding-left:10px"><?php echo $chitietsp['UuNhuocDiem'] ?></td>
                  </tr>
                  <tr>
                    <td style="text-align:left;padding-left:10px">Thời gian giao hàng</td>
                    <td style="text-align:left;padding-left:10px"><?php echo $chitietsp['ThoiGianGiaoHang'] ?></td>
                  </tr>
            </table>
      
      </div>
      <div class="TabbedPanelsContent">
			<?php echo $chitietsp['baiviet']?>
      </div>
    </div>
  </div>
</div>
 <div class="clear"></div>
<table width="100%" border="0" style="float:left">
	<tr>
    	<td >
    		<div class="tieude-sanpham">
				<h3><span>Sản phẩm cùng loại</span></h3>
			</div>
        </td>
    </tr>
	<tr>
     <?php
		   $slcl="select * from sanpham where idLoai=".$chitietsp['idLoai']."  and idSP ORDER BY RAND() limit 4";
		   $kqcl=mysql_query($slcl);
		   while($row_spmoi=mysql_fetch_array($kqcl)){
           ?>
        <td style="float:left; margin-left:5px;margin-right:5px" width="162px" height="280px">
        
        	<table width="162px"  border="0" cellspacing="3" cellpadding="3" align="center" >
           <tr>
          
                <td colspan="2" height="40" style="text-align:center">
                    <a href="noithat.php?page=chitietsanpham&idSP=<?php echo $row_spmoi['idSP']?>" class="tensp"> 
                    <?php echo $row_spmoi['TenSP']?></a>
                 </td>
           </tr>
           <tr>
                <td colspan="2" align="center">
            	<div class="thumbnail-item">
               <a href="noithat.php?page=chitietsanpham&idSP=<?php echo $row_spmoi['idSP'] ?>"><img src="imagesnoithat/<?php echo $row_spmoi['UrlHinh']?>" 00="" align="center" width="156" height="128" border="0" title="<?php echo $row_spmoi['TenSP']?>" alt="<?php echo $row_spmoi['TenSP']?>" id="img_preview">
                </a>
                <div class="tooltip">
                 <img src="upload/sanpham/hinhchinh/<?php echo $row_spmoi['UrlHinh']?>" alt="" width="350" height="300" />
				</div> 
				</div>
                 </td>
           </tr>
           <tr>
                <td colspan="2" align="center" height="25">         
                    <span class="giaban">
                        <?php echo number_format($row_spmoi['Gia']);?> VNĐ			
                    </span>            
            
             	</td>
           </tr>              
           <tr>
                    <td width="140"  height="60x" >             

                        <div id="cart"><a class="dathang" idSp="<?php echo $row_spmoi['idSP'] ?>"href="noithat.php?page=kiemtra_dangnhap&idSP=<?php echo $row_spmoi['idSP']?>">Đặt mua</a></div>        		        
                    </td>
           </tr>            	
         </table>
         <?php }?>	
	</td>
    
    </tr>
    <tr> 
    	<td>
        <?php
		include('html5-form/index.php');
        ?>
        </td>
    </tr>
    <tr>
    	<td style="color:#0C3; font-size:24px; text-align:center">Các ý Kiến mới nhất về sản phẩm này </td>
    </tr>
    <?php
	$slcm="select * from sanpham_comment where idSP={$_GET['idSP']}  ORDER BY `sanpham_comment`.`id_comment` DESC";
	
	$kqcm=mysql_query($slcm);
	$sp=3;
		$tsp=mysql_num_rows($kqcm);
		$tst=ceil($tsp/$sp);
		
		if(isset($_GET['trang']))
		$page=$_GET['trang'];
		else
		$page=1;
		$vt=($page-1)*$sp;
		$slcm="select * from sanpham_comment where idSP={$_GET['idSP']} ORDER BY `sanpham_comment`.`id_comment` DESC limit $vt,$sp";
	
	$kqcm=mysql_query($slcm);
	if(mysql_num_rows($kqcm)==0)
	{?>
    <tr>
    	<td style="text-align:center; color:#FFF">Chưa có ý kiến nào</td>
    </tr>
    <?php
    }
	while($dcm=mysql_fetch_array($kqcm))
	{
    ?>
    <tr>
    	<td style="color:#FFF;">-<?php echo $dcm['hoten']?>(<?php echo $dcm['email']?>):<?php echo $dcm['noidung']?></td>
    </tr>
    <?php }?>
    <tr style="text-align:center;"> 

	
	<td><?php
	for($i=1; $i<=$tst; $i++)
	{
	?><a href="<?php echo "noithat.php?trang=".$i."&page=chitietsanpham&idSP=".$_GET['idSP'];
	?>" style="background-color:<?php if(!isset($_GET['trang'])||$_GET['trang']!=$i) echo "#0C3"; else if($_GET['trang']==$i) echo "#FFF";?>; color:<?php if(!isset($_GET['trang'])||$_GET['trang']!=$i) echo "#FFF"; else if($_GET['trang']==$i) echo "#0C3";?>; width:100px; text-decoration:none;"><?php if($i>=10) echo $i; else echo "0".$i;?></a>|<?php } ?></td>

</tr>
    
</table>

<script type="text/javascript">
var TabbedPanels1 = new Spry.Widget.TabbedPanels("TabbedPanels1");
</script>
