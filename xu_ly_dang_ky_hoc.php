<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Untitled Document</title>
</head>

<body>
	<?php
	session_start();
	ob_start();
	if(isset($_POST['submit']))
	{
		include("dbconnect.php");
		$sql = "insert into phieu_dk (ho_ten, noi_sinh, so_cmnd, ngay_cap, noi_cap, sdt, que_quan, ngay_sinh, lop, buoi)
		values ('".$_POST['ho_ten']."', '".$_POST['noi_sinh']."', '".$_POST['cmnd']."', '".$_POST['ngay_cap']."', '".$_POST['noi_cap']."', '".$_POST['so_dien_thoai']."', '".$_POST['que_quan']."', '".$_POST['ngay_sinh']."', '".$_POST['radio']."', '".$_POST['radio']."')";
		if(mysqli_query($connect,$sql))
		{
			echo("<script>alert('đăng ký thành công');");
			echo("location.href='php/dang_ky_hoc.php';</script>");
		}
		else
		{
			echo("<script>alert('không thể đăng ký');");
			echo("location.href='php/dang_ky_hoc.php';</script>");
		}
	}
	else
	{
		echo("<script>alert('chưa đăng ký');");
		echo("location.href='php/dang_ky_hoc.php';</script>");
	}
	?>
</body>
</html>