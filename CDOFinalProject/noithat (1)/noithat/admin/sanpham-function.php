<?php
//-------------------------------------------------------------------------------------
// THEM MOI SANPHAM
//-------------------------------------------------------------------------------------
function sanpham_them($idLoai,$TenSP,$TenSP_KD,$NhaSX,$MoTa,$UrlHinh,$Gia,$baiviet,$SoLuongTonKho,$GhiChu,$AnHien,$ChatLieu, $KichThuoc, $MauSac, $CongNghe, $TieuChuanKiThuat, $UuNhuocDiem, $ThoiGianGiaoHang){
	// Insert SQL
	$sql = sprintf("INSERT INTO sanpham (idLoai,TenSP,TenSP_KD,NhaSX,MoTa,UrlHinh,Gia,baiviet,SoLuongTonKho,GhiChu,AnHien, ChatLieu, KichThuoc, MauSac, CongNghe, TieuChuanKiThuat, UuNhuocDiem, ThoiGianGiaoHang) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)",
		checkvalue($idLoai,"int"),
		checkvalue($TenSP,"text"),
		checkvalue($TenSP_KD,"text"),
		checkvalue($NhaSX,"text"),
		checkvalue($MoTa,"text"),
		checkvalue($UrlHinh,"text"),
		checkvalue($Gia,"text"),		
		checkvalue($baiviet,"text"),		
		checkvalue($SoLuongTonKho,"int"),
		checkvalue($GhiChu,"text"),
		checkvalue($AnHien,"int"),
				  checkvalue($ChatLieu,"text"),
				  checkvalue($KichThuoc,"text"),
				  checkvalue($MauSac,"text"),
				  checkvalue($CongNghe,"text"),
				  checkvalue($TieuChuanKiThuat,"text"),
				  checkvalue($UuNhuocDiem,"text"),
				  checkvalue($ThoiGianGiaoHang,"text"));
	 //echo $sql;
	$result = mysql_query($sql);
	return $result;
}
	
//-------------------------------------------------------------------------------------
// CAP NHAT sanpham
//-------------------------------------------------------------------------------------
function sanpham_capnhat($idSP,$idLoai,$TenSP,$TenSP_KD,$NhaSX,$MoTa,$UrlHinh,$Gia,$baiviet,$SoLuongTonKho,$GhiChu,$AnHien,$ChatLieu, $KichThuoc, $MauSac, $CongNghe, $TieuChuanKiThuat, $UuNhuocDiem, $ThoiGianGiaoHang){
	// Update SQL
	$sql = sprintf("UPDATE sanpham SET idLoai=%s,TenSP=%s, TenSP_KD=%s, NhaSX=%s,MoTa=%s, UrlHinh=%s,Gia=%s,baiviet=%s,SoLuongTonKho=%s,GhiChu=%s,AnHien=%s, ChatLieu=%s, KichThuoc=%s, MauSac=%s, CongNghe=%s, TieuChuanKiThuat=%s, UuNhuocDiem=%s, ThoiGianGiaoHang=%s WHERE idSP=%s",
		checkvalue($idLoai,"int"),
		checkvalue($TenSP,"text"),
		checkvalue($TenSP_KD,"text"),
		checkvalue($NhaSX,"text"),
		checkvalue($MoTa,"text"),
		checkvalue($UrlHinh,"text"),
		checkvalue($Gia,"text"),		
		checkvalue($baiviet,"text"),		
		checkvalue($SoLuongTonKho,"int"),
		checkvalue($GhiChu,"text"),		
		checkvalue($AnHien,"int"),
		
				  checkvalue($ChatLieu,"text"),
				  checkvalue($KichThuoc,"text"),
				  checkvalue($MauSac,"text"),
				  checkvalue($CongNghe,"text"),
				  checkvalue($TieuChuanKiThuat,"text"),
				  checkvalue($UuNhuocDiem,"text"),
				  checkvalue($ThoiGianGiaoHang,"text"),
				  checkvalue($idSP,"int"));
	//echo $sql;
	$result = mysql_query($sql);
	return $result;
}

//-------------------------------------------------------------------------------------
// XOA sanpham
//-------------------------------------------------------------------------------------
function sanpham_xoa($id){
	$sql = "DELETE FROM sanpham WHERE idSP = $id";
	$result = mysql_query($sql);
	return $result;
}

