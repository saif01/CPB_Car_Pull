<?php
session_start();
error_reporting(0);
if(strlen($_SESSION['adminName'])==0)
  { 
header('location:login');
}
else{  

include('../db/config.php');
include('../db/calDB.php');

$sql=mysqli_query($con," SELECT * FROM `user`");
$users=mysqli_num_rows($sql);

$sql2=mysqli_query($con," SELECT * FROM `car_driver`");
$drivers=mysqli_num_rows($sql2);

$sql3=mysqli_query($con," SELECT * FROM `tbl_car`");
$cars=mysqli_num_rows($sql3);


$query2="SELECT `car_name` ,COUNT(*) as number FROM `car_booking` GROUP BY `car_id` ";
$result2 = mysqli_query($con, $query2);



$query = "SELECT `year` FROM `chart_info` GROUP BY `year` DESC";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();


	?>


<!-- All header link -->
<?php include('include/header.php');?>


</head>
<body>
<!-- Start navbar  -->
	<!-- start: Header -->
	<div class="navbar">
		<div class="navbar-inner">
			<div class="container-fluid">
				
				<a class="brand" href="index"><span>CPB Car Pull</span></a>
								
				<!-- start: Header Menu -->
				<div class="nav-no-collapse header-nav">
					<ul class="nav pull-right">
						<li class="dropdown hidden-phone">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white warning-sign"></i>
							</a>
							
						</li>
					
						<li class="dropdown">
							<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="halflings-icon white user"></i><?php echo $_SESSION['adminName']; ?>
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu">
								<li class="dropdown-menu-title">
 									<span>Account Settings</span>
								</li>
								<li><a href="#"><i class="halflings-icon user"></i> Profile</a></li>
								<li><a href="Logout-admin"><i class="halflings-icon off"></i> Logout</a></li>
							</ul>
						</li>
						<!-- end: User Dropdown -->
					</ul>
				</div>
				<!-- end: Header Menu -->
				
			</div>
		</div>
	</div>
	<!-- start: Header -->
 <!-- End Navbar -->
   <!--  Start Sidebar -->
	<?php include('include/sidebar.php');?>
	<!--  End Sidebar -->		
			
			
			<!-- start: Content -->
			<div id="content" class="span10">
			
			
			<ul class="breadcrumb">
				<li>
					<i class="icon-home"></i>
					<a href="index">Home</a> 
					<i class="icon-angle-right"></i>
				</li>
				<li><a href="#">Dashboard</a></li>
			</ul>

			<div class="row-fluid">
				
				
				<div class="row-fluid sortable">
				<div class="box span6">
					<div class="box-header">
						<h2><i class="halflings-icon list-alt"></i><span class="break"></span>Pie</h2>
						<div class="box-icon">
							
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
							 <div id="Calendar_S" style=" height: 300px;"></div> 
					</div>
				</div>
			

			<div class="box span6">
					<div class="box-header">
						<h2><i class="halflings-icon list-alt"></i><span class="break"></span>Pie</h2>
						<div class="box-icon">
							
							<a href="#" class="btn-minimize"><i class="halflings-icon chevron-up"></i></a>
							<a href="#" class="btn-close"><i class="halflings-icon remove"></i></a>
						</div>
					</div>
					<div class="box-content">
							 <!-- <div id="Calendar_S" style=" height: 300px;"></div>  -->
					</div>
				</div>
				
			
				</div><!--/row-->
						
			</div>	







						
			
			
			<div class="row-fluid">	

				

				<a href="user-all-info" class="quick-button metro yellow span2" style="border-radius: 50px 15px;">
					<i class="icon-user"></i>
					<p>All Users</p>
					<span class="badge"> <?php echo $users; ?></span>
				</a>

				<a href="driver-all-info" class="quick-button metro purple span2" style="border-radius: 50px 15px;">
					<i class="icon-group"></i>
					<p>All Drivers</p>
					<span class="badge"> <?php echo $drivers; ?></span>
				</a>

				<a href="car-table" class="quick-button metro green span2" style="border-radius: 50px 15px;">
					<i class="icon-cog"></i>
					<span class="badge"> <?php echo $cars; ?></span>
					<p>All Cars</p>
				</a>
				<a class="quick-button metro pink span2">
					<i class="icon-random"></i>
					<p>Messages</p>
					<span class="badge">88</span>
				</a>
				<a href="calendar-view" class="quick-button metro black span2">
					<i class="icon-calendar"></i>
					<p>Calendar</p>
				</a>
				
				<div class="clearfix"></div>
								
			</div><!--/row-->
			

			


       

	</div><!--/.fluid-container-->
	
			<!-- end: Content -->
		</div><!--/#content.span10-->
		</div><!--/fluid-row-->




	<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>  
	<script type="text/javascript">  
           google.charts.load('current', {'packages':['corechart']});  
           google.charts.setOnLoadCallback(Calendar_S);  
           function Calendar_S()  
           {  
                var data = google.visualization.arrayToDataTable([  
                          ['car_name', 'Number'],  
                          <?php  
                          while($row2 = mysqli_fetch_array($result2))  
                          {  
                               echo "['".$row2["car_name"]."', ".$row2["number"]."],";  
                          }  
                          ?>  
                     ]);  
                var options = {  
                      title:'Percentage of Car Pull',  
                      is3D:true,  
                      //pieHole: 0.5  
                     };  
                var chart = new google.visualization.PieChart(document.getElementById('Calendar_S'));  
                chart.draw(data, options);  
           }  
           </script>


<!-- Bar Chart Link -->
 		<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
        <script src="https://code.jquery.com/jquery-1.12.4.js"></script> 
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!-- Bar Chart Link -->

	<script type="text/javascript">
google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback();

function load_monthwise_data(year, title)
{
    var temp_title = title + ' '+year+'';
    $.ajax({
        url:"../cal/barChart/data-load.php",
        method:"POST",
        data:{year:year},
        dataType:"JSON",
        success:function(data)
        {
            drawMonthwiseChart(data, temp_title);
        }
    });
}

function drawMonthwiseChart(chart_data, chart_main_title)
{
    var jsonData = chart_data;
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Month');
    data.addColumn('number', 'Booking_day');
    $.each(jsonData, function(i, jsonData){
        var month = jsonData.month;
        var booking_day = parseFloat($.trim(jsonData.booking_day));
        data.addRows([[month, booking_day]]);
    });
    var options = {
        title:chart_main_title,
        hAxis: {
            title: "Months"
        },
        vAxis: {
            title: 'Booking_day'
        }
    };

    var chart = new google.visualization.ColumnChart(document.getElementById('chart_area'));
    chart.draw(data, options);
}

</script>

<script>
    
$(document).ready(function(){

    $('#year').change(function(){
        var year = $(this).val();
        if(year != '')
        {
            load_monthwise_data(year, 'Month Wise Profit Data For');
        }
    });

});

</script>
	
	<?php include('include/footer.php');?>
	
	<?php } ?>