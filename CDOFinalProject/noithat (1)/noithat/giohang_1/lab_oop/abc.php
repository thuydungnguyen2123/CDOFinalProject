<?php
//Xay dung doi tuong:
class ten_doituong
{
	//Khai bao cac thuoc tinh - > cac bien
	
	//KHai bao cac phuong thuc - > cac function
}


class concun
{
	//Khai bao cac thuoc tinh:
	public $maulong;
	private $cannang;
	protected $gioitinh;
	private $ten;
	
	//Khai bao cac phuong thuc:
	public function datten($abc)
	{
		$this->ten=$abc;
	}
	
	public function inten()
	{
		echo $this->ten;
	}
	
	//Xay dung ham tao:
	function __construct()
	{
		$this->cannang=10;
		$this->ten="cun cun";
		$this->maulong="Trang";
	}
	
	//Xay dung ham huy:
	function __destruct()
	{
		echo $this->ten." da bi huy";
	}
}

?>