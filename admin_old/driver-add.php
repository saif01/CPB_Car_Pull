<?php
session_start();
error_reporting(0);
if(strlen($_SESSION['adminName'])==0)
  { 
header('location:login');
}
else{  ?>

<?php
include('include/config.php');



if (isset($_POST['submit'])) {

$driver_name=$_POST['driver_name'];
$for_car=$_POST['for_car'];
$driver_phone=$_POST['driver_phone'];
$driver_nid=$_POST['driver_nid'];

$driver_license=$_POST['driver_license'];

echo $for_car;




//$compfile=$_FILES["compfile"]["name"]; 
$driver_img=$_FILES["driver_img"]["name"];


move_uploaded_file($_FILES["driver_img"]["tmp_name"],"p_img/driverimg/".$_FILES["driver_img"]["name"]);

 $query=mysqli_query($con,"INSERT INTO `car_driver`(`car_id`, `driver_name`, `driver_phone`, `driver_img`, `driver_license`, `driver_nid`) VALUES ('$for_car','$driver_name','$driver_phone','$driver_img','$driver_license','$driver_nid')");


?>
<script>
    alert('Update successfull.  !');
    window.open('driver-update.php','_self');
    </script>
<?php } ?>

<?php include('include/header.php');?>
</head>
<body>
	
	<?php include('include/sidebar.php');?>
			
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
				<li>
					<i class="icon-edit"></i>
					<a href="#">Forms</a>
				</li>
			</ul>
			
			<div class="row-fluid sortable">
				<div class="box span12">
					<div class="box-header" data-original-title>
						<h2><i class="halflings-icon edit"></i><span class="break"></span>Form Elements</h2>
						<div class="box-icon">
							<a href="#" class="btn-setting"><i class="halflings-icon wrench"></i></a>
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
						<form class="form-horizontal" action="" method="post" enctype="multipart/form-data">
						  <fieldset>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Driver Name </label>
							  <div class="controls">
								<input type="text" name="driver_name" class="span6 typeahead" >
							  </div>
							</div>

							 <div class="control-group">
								<label class="control-label" for="selectError3">For Car</label>
								<div class="controls">
<select name="for_car" class="form-control" >
	<option value="pick"> </option>
<?php
				$query2=mysqli_query($con,"SELECT `car_id`, `car_name`FROM `tbl_car` ");
			while ($row2 = mysqli_fetch_array($query2))
			{
echo "<option value='". $row2['car_id'] ."'>" .$row2['car_name'] ."</option>" ;
}
?>

</select>
								  
								</div>
							  </div>


							<div class="control-group">
							  <label class="control-label" for="typeahead">Driver Contract </label>
							  <div class="controls">
								<input type="text" name="driver_phone" class="span6 typeahead" >
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Driver NID </label>
							  <div class="controls">
								<input type="text" name="driver_nid" class="span6 typeahead" >
							  </div>
							</div>
							<div class="control-group">
							  <label class="control-label" for="typeahead">Driver License </label>
							  <div class="controls">
								<input type="text" name="driver_license" class="span6 typeahead" >
							  </div>
							</div>
							

							<div class="control-group">
							  <label class="control-label" for="fileInput">Driver Image</label>
							  <div class="controls">
								<input class="input-file uniform_on" name="driver_img"  type="file">
							  </div>
							</div>     
							
							
							 
										 
							
							<div class="form-actions">
							  <button type="submit" name="submit" class="btn btn-primary">Update Car</button>
							  <button type="reset" class="btn">Cancel</button>
							</div>
						  </fieldset>
						</form>   

					</div>
				</div><!--/span-->

			</div><!--/row-->

			
			
    

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->
		
	<div class="modal hide fade" id="myModal">
		<div class="modal-header">
			<button type="button" class="close" data-dismiss="modal">×</button>
			<h3>Settings</h3>
		</div>
		<div class="modal-body">
			<p>Here settings can be configured...</p>
		</div>
		<div class="modal-footer">
			<a href="#" class="btn" data-dismiss="modal">Close</a>
			<a href="#" class="btn btn-primary">Save changes</a>
		</div>
	</div>
	
	<div class="clearfix"></div>
	
	<?php include('include/footer.php') ?>
	

	<?php } ?>