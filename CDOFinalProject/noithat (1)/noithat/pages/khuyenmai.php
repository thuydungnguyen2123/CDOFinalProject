<table width="100%" border="0" style="float:left" >

	<tr>  
    	<td >
   			<div class="tieude-sanpham">
				<h3>Sản phẩm Khuyến Mãi</h3>
			</div>
        </td>
    </tr>
	<tr>
    <?php
	
		$sl="SELECT * FROM `sanpham` ORDER BY `SoLuongTonKho` DESC limit 0,8 ";
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
               <a href="index.php?p=chitietsanpham&TenSP_KD= Ban_an_Fence"><img src="imagesnoithat/<?php echo $d['UrlHinh']?>" 00="" align="center" width="156" height="128" border="0" title=" <?php echo $d['TenSP']?>" alt=" <?php echo $d['TenSP']?>" id="img_preview">
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

                    	<div id="cart"><a class="dathang" idSp="686"href="index.php?p=xemgiohang">Đặt mua</a></div>       		        
                    </td>
           </tr>            	
         </table>
	</td>
    	<?php } ?>
       
        </tr>
</table>