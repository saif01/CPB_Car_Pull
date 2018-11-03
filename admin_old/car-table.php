<?php
session_start();
error_reporting(0);
if(strlen($_SESSION['adminName'])==0)
  { 
header('location:login');
}
else{  

include('include/config.php');

	?>

	<!-- All header link -->
<?php include('include/header.php');?>
</head>
<body>
<!-- Start navbar  -->
<?php include('include/navbar.php');?>
 <!-- End Navbar -->
   <!--  Start Sidebar -->
	<?php include('include/sidebar.php');?>
	<!--  End Sidebar -->


	
			
			<noscript>
				<div class="alert alert-block span10">
					<h4 class="alert-heading">Warning!</h4>
					<p>You need to have <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> enabled to use this site.</p>
				</div>
			</noscript>
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index.html">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Tables</a></li>
			</ul>

			<div class="row-fluid sortable">		
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon user"></i><span class="break"></span>Members</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">

						<table class="table table-striped table-bordered bootstrap-datatable datatable">


						  <thead>
							  <tr>
								  <th>Name</th>
								  <th>Model</th>
								  <th>Type</th>
								  <th>Capacity</th>
								  <th>Actions</th>
								  <th>Actions</th>
							  </tr>
						  </thead>   
						  <tbody>
						  	<?php 
		$query=mysqli_query($con," SELECT * FROM `tbl_car`");
		while($row=mysqli_fetch_array($query))
		{

?>
							<tr>
								<td class="center" ><?php echo htmlentities($row['car_name']) ; ?></td>
								<td class="center"><?php echo htmlentities($row['car_model']); ?></td>
								<td class="center"><?php echo htmlentities($row['car_type']); ?></td>
								<td class="center"><?php echo htmlentities($row['car_capacity']); ?></td>
								<td class="center">   
								<?php
                                         if($row['show_status']==1)
                                         {?>
                                        <a href="car-status.php?h_car_id=<?php echo htmlentities($row['car_id']);?>" onclick="return confirm('Are you sure you want to Hide this ** ID **?');"><button class="btn btn-primary"> <i class="icon-ok-circle"> Show</i></button>
                                            
                                        <?php } else {?>

                                            <a href="car-status.php?s_car_id=<?php echo htmlentities($row['car_id']);?>" onclick="return confirm('Are you sure you want to Show this ** Car **?');"><button class="btn btn-danger"><i class="icon-ban-sign"> Hide </i></button> 
                                            <?php } ?>
                                          

								</td>
								<td class="center">
									<a class="btn btn-success" href="#">
										<i class="halflings-icon white zoom-in"></i>  
									</a>
									<a class="btn btn-info" href="car-update.php?car_id=<?php echo $row['car_id'] ?>">
										<i class="halflings-icon white edit"></i>  
									</a>
									
										 <a href="car-delete.php?car_id=<?php echo $row['car_id']?>" onClick="return confirm('Are you sure you want to delete?')"><button type="button" class="btn btn-danger" ><i class="icon-remove-sign"> Delete</i></button></a>
									</a>
								</td>
							</tr>
			<?php } ?>	
							
						  </tbody>
					  </table>


					</div>
				</div><!--/span-->
			
			</div><!--/row-->

			
	
	
	
	<!-- start: JavaScript-->



	<?php include('include/footer.php');?>
	
	<?php } ?>