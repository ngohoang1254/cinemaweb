<?php 
//ket noi voi co so du liệu
$dbc = mysqli_connect('localhost','root','','web');
//ket nối khong thanh cong
if(!$dbc)
{
	echo "Kết nối không thành công";
}
else{
	mysqli_set_charset($dbc,"utf8");
}
?>