<?php 
include('connect.php');
$sl="select * from tintuc where hienthi=1 order by IDtintuc DESC";
$kq=mysql_query($sl);
?>
<table width="100%" border="0">
  <tr>
        <td colspan="3">
    	<div class="tieude-sanpham">
				<h3><span>Tin tức</span></h3>
		</div>
    </td>
  </tr>
</table>

<div id="tintuc">
<?php
while($d=mysql_fetch_array($kq))
{
?>
<div class="item3">
	<div class="tentintuc"><a href="noithat.php?page=chitiettintuc&IDtintuc=<?php echo $d['IDtintuc']?>"><?php echo $d['tintuc']?></a></div>
    <div class="ngaydang">Ngày đăng: <?php echo $d['ngaydang'];?></div>
    <div class="soluot">Số lượt xem: <?php echo $d['soluot']?></div>
	<img name="" src="upload/tintuc/<?php echo $d['hinhanh']?>" alt="" />
    <span class="gioithieu"><?php echo $d['gioithieu']?></span>
</div>
<?php }?>
</div>
