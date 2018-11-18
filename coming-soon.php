<?php include ("include/header.php");?>
<?php include("inc/myconnect.php");?>
<div class = "container">
	<div class = "row">
		<h1 style="margin-top: 20px"> Phim đang chiếu </h1>
	</div>
	<?php
		$limit = 4;
		$query_pg = "SELECT COUNT(id) from tblphim where status = 1";
		$results_pg=mysqli_query($dbc,$query_pg) or die ("Query {$query} MYSQL errors: ".mysqli_error($dbc));
		list($record)=mysqli_fetch_array($results_pg,MYSQLI_NUM);
		//Tìm số dòng bằng cách lấy số record chia cho limit
		if($record>$limit){
			$per_row = ceil($record/$limit);
		}
		else{
			$per_row = 1;
		}
		
		

		
		?>
	<div class = "row">
				<?php
					for($ro=0;$ro<($per_row*4);$ro+=4){
						
					$query = "SELECT * from tblphim where status = 1 ORDER BY id ASC limit {$ro},{$limit}";
					$result=mysqli_query($dbc,$query) or die ("Query {$query} MYSQL errors: ".mysqli_error($dbc));
					while($video = mysqli_fetch_array($result,MYSQLI_ASSOC)){


				?>
	
		<div class = "col-xl-3 col-md-3" style = "margin-top:10px">
			<div class ="card-group" >
			<div class="card" style = "border-width: 0px">
  				<a href = "#"><img class="card-img-top" src="admin/<?php echo $video['poster']; ?>" alt="Card image" style = "width: 20px height:20px"></a>
  					<div class="card-body">
  						
    				<h4 style="text-align: center">  <?php echo $video['tenphim']?></h4>
    				<p><strong>Thể loại:</strong>  <?php echo $video['theloai']?></p>
    				<p><strong>Đạo diễn:</strong>  <?php echo $video['daodien']?></p>
  					<p><strong>Diễn viên:</strong> <?php echo $video['dienvien']?></p>
  					<p><strong>Ngày khởi chiếu:</strong> <?php echo $video['ngaykhoichieu']?></p>
  				
  	</div>		
  </div>
	</div>
	</div>	
<?php
	}
}

?>
</div>