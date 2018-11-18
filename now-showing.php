<style type="text/css">
	.card-body p{
		font-size: 12px;
		margin:0 auto;
		padding: 0 auto;
	}
	.card-body{
		height: 200px;
	}
	.button{
		margin-bottom: 30px;
		background-color: #E54B4B;
	    border: none;
	    color: white;
	    padding: 15px 32px;
	    text-align: center;
	    text-decoration: none;
	    display: inline-block;
	    font-size: 14px;
	    cursor: pointer;
	}
	#h1style{
		margin-top: 20px;
		border-bottom: solid black 3px;       
	}
	.card-img-top{
		margin-top: 20px;
	}

</style>
<?php include ("include/header.php");?>
<?php include("inc/myconnect.php");?>
<div class = "container-fluid">
	<div id="h1style">
		<h3>PHIM ĐANG CHIẾU</h3>
	</div>
	<?php
		$limit = 4;
		$query_pg = "SELECT COUNT(id) from tblphim where status = 0";
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
						
					$query = "SELECT * from tblphim where status = 0 ORDER BY id ASC limit {$ro},{$limit}";
					$result=mysqli_query($dbc,$query) or die ("Query {$query} MYSQL errors: ".mysqli_error($dbc));
					while($video = mysqli_fetch_array($result,MYSQLI_ASSOC)){
				?>
		<div class = "col-xs-3 col-sm-3 col-md-3 col-lg-3" >
			<div class ="card-group" >
				<div class="card" style = "border-width: 0px">
	  				<a href = "phiminfo.php?id=<?php echo $video['id']?>"><img class="card-img-top" src="admin/<?php echo $video['poster']; ?>" alt="Card image" style = "width: 20px height:20px"></a>
	  			</div>
			</div>
				  		<div class="card-body">
		    				<h5>  <?php echo $video['tenphim']?></h5>
		    				<p><strong>Thể loại:</strong>  <?php echo $video['theloai']?></p>
		    				<p><strong>Đạo diễn:</strong>  <?php echo $video['daodien']?></p>
		  					<p><strong>Diễn viên:</strong> <?php echo $video['dienvien']?></p>
		  					<p><strong>Ngày khởi chiếu:</strong> <?php echo $video['ngaykhoichieu']?></p>
	  					</div class = "col-xl-3 col-md-3">
	  						<button class="button">Mua Vé</button>
						</div>	
<?php
	}
}
?>
	</div>
</div>