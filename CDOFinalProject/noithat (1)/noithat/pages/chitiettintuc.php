
<?php

	$sl="select * from tintuc where IDtintuc=".$_GET['IDtintuc'];
	$kq=mysql_query($sl);
	$r=mysql_fetch_array($kq);
?>
<table width="100%" border="0">
  <tr>
        <td colspan="3">
    	<div class="tieude-sanpham">
				<h3><span>Chi tiết tin tức</span></h3>
		</div>
    </td>
  </tr>
</table>
<div id="tintuc">
<div class="detail">
	<div class="tentintuc">Tên tin tức: <?php echo $r['tintuc']; ?></div>
    <div class="soluot">Số lượt xem: <?php echo $r['soluot']." lượt"; ?></div>
	<div class="hinh"><img src="upload/tintuc/<?php echo $r['hinhanh']; ?>" alt="" name="" width="534" height="348" /></div>
    <?php /*?><div class="gioithieu" style="text-align:center"><?php echo $r['gioithieu']; ?></div><?php */?>
    <div class="chitiettin"><?php echo $r['chitiet']; ?></div>
</div>
</div>
