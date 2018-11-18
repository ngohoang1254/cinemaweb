<?php
	if(isset($_GET['id'])&& filter_var($_GET['id'],FILTER_VALIDATE_INT,array('min_range'=>1))){
				$id = $_GET['id'];
	include('include/header.php');
	
	include('inc/myconnect.php');	
	$query = "SELECT * FROM tblphim where id = {$id}";
	$result =mysqli_query($dbc,$query);
	$video = mysqli_fetch_array($result,MYSQLI_ASSOC);

	?>
	<div class = "container-fluid">
	<div class = "row">
		<div style = "text-align: center; margin-left: 450px;">
	<?php

	echo $video['link'];
	?>
		</div>
	</div>
	<div class = "row">
		<p> <?php  echo $video['noidung'];?></p>
	</div>
</div>

<?php
		include('include/footer.php');
		}
	else{
		header('Location:index.php');
		exit;
	}
?>