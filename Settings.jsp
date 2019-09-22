<!DOCTYPE html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.Date"%>

<%@page import="Admin.Database"%>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" type="image/png" sizes="16x16"
	href="plugins/images/medicareimage/if_medical_icon_3_1290986.png">
<title>Settings</title>
<!-- Bootstrap Core CSS -->
<link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Menu CSS -->
<link
	href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css"
	rel="stylesheet">
<!-- toast CSS -->
<link href="plugins/bower_components/toast-master/css/jquery.toast.css"
	rel="stylesheet">
<!-- morris CSS -->
<link href="plugins/bower_components/morrisjs/morris.css"
	rel="stylesheet">
<!-- chartist CSS -->
<link href="plugins/bower_components/chartist-js/dist/chartist.min.css"
	rel="stylesheet">
<link
	href="plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css"
	rel="stylesheet">
<!-- animation CSS -->
<link href="css/animate.css" rel="stylesheet">
<!-- Custom CSS -->
<link href="css/style5.css" rel="stylesheet">
<!-- color CSS -->
<link href="css/colors/default.css" id="theme" rel="stylesheet">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

</head>

<style>
#myProgress {
	width: 100%;
	background-color: white;
}

#myBar {
	width: 0%;
	height: 15px;
	background-color: teal;
}

#myProgress2 {
	width: 100%;
	background-color: white;
}

#myBar2 {
	width: 0%;
	height: 15px;
	background-color: teal;
}

body{padding-top:20px;}


/* Switch button */
.btn-default.btn-on.active{background-color: #5BB75B;color: white;}
.btn-default.btn-off.active{background-color: #DA4F49;color: white;}

.btn-default.btn-on-1.active{background-color: #006FFC;color: white;}
.btn-default.btn-off-1.active{background-color: #DA4F49;color: white;}

.btn-default.btn-on-2.active{background-color: #00D590;color: white;}
.btn-default.btn-off-2.active{background-color: #A7A7A7;color: white;}

.btn-default.btn-on-3.active{color: #5BB75B;font-weight:bolder;}
.btn-default.btn-off-3.active{color: #DA4F49;font-weight:bolder;}

.btn-default.btn-on-4.active{background-color: #006FFC;color: #5BB75B;}
.btn-default.btn-off-4.active{background-color: #DA4F49;color: #DA4F49;}
</style>



<body class="fix-header">
	<!-- ============================================================== -->
	<!-- Preloader -->
	<!-- ============================================================== -->
	<div class="preloader">
		<svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none"
				stroke-width="2" stroke-miterlimit="10" />
        </svg>
	</div>
	<!-- ============================================================== -->
	<!-- Wrapper -->
	<!-- ============================================================== -->
	<div id="wrapper">
		<!-- ============================================================== -->
		<!-- Topbar header - style you can find in pages.scss -->
		<!-- ============================================================== -->
		<nav class="navbar navbar-default navbar-static-top m-b-0">
			<div class="navbar-header">
				<div class="top-left-part">
					<!-- Logo -->

					<a class="logo" href="Dashboard.jsp"> <!-- Logo icon image, you can use font-icon also -->
						<b> <!--This is dark logo icon--> <!--This is light logo icon-->
							<img src="plugins/images/medicareimage/Untitled-new.png"
							alt="home" class="light-logo"
							style="margin-top: 10px; height: 50px; width: 215px;" />
					</b> </span>
					</a>
				</div>
				<!-- /Logo -->

			</div>
			<!-- /.navbar-header -->
			<!-- /.navbar-top-links -->
			<!-- /.navbar-static-side -->
		</nav>
	</div>
	<!-- End Top Navigation -->
	<!-- ============================================================== -->
	<!-- Left Sidebar - style you can find in sidebar.scss  -->
	<!-- ============================================================== -->
	<div class="navbar-default sidebar" role="navigation">
		<div class="sidebar-nav slimscrollsidebar">
			<div class="sidebar-head">
				<h3>
					<span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span>
					<span class="hide-menu">Navigation</span>
				</h3>
			</div>
			  <ul class="nav" id="side-menu">
                    <li style="padding: 70px 0 0;">
                        <a href="Dashboard.jsp" class="waves-effect"></i>Dashboard&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="plugins/images/medicareimage/if_Dashboard_72965.png"/></a>
                        
                    </li>
                   
                    <li>
                        <a href="Add Doctor.jsp" class="waves-effect">Doctors&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="plugins/images/medicareimage/if_doctor_63121.png"/></a>
                    </li>
                    <li>
                        <a href="Appoinments.jsp" class="waves-effect">Appointments&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="plugins/images/medicareimage/if_calendar-date-month-planner_532741.png"/></a>
                    </li>
                    <li>
                        <a href="Reports.jsp" class="waves-effect">Reports&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="plugins/images/medicareimage/if_Cloud_graph_graph_graph_report_online_graph_pie_graph_1886799.png"/></a>
                    </li>
                    
                    <li>
                        <a href="Settings.jsp" class="waves-effect">Settings&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="plugins/images/medicareimage/if_settings_65940.png"/></a>
                    </li>
                    
                     <li>
                        <a href="event_handling.jsp" class="waves-effect">Events Handling&nbsp;&nbsp;&nbsp;<img src="plugins/images/medicareimage/if_Finance_financial_planning_1889194.png"/></a>
                    </li>
                    
                    <li>
                        <a href="patient.jsp" class="waves-effect">Patient Handling&nbsp;&nbsp;&nbsp;<img src="plugins/images/medicareimage/if_8_375259.png"/></a>
                    </li>
                    

                </ul>
                

		</div>

	</div>
	<!-- ============================================================== -->
	<!-- End Left Sidebar -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- Page Content -->
	<!-- ============================================================== -->
	<div id="page-wrapper">
		<div class="container-fluid">
			<div class="row bg-title">
				<div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
					<h4 class="page-title">Settings</h4>
				</div>
				<div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"></div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<!-- ============================================================== -->
			<!-- Different data widgets -->
			<!-- ============================================================== -->
			<!-- .row -->




			<!-- Content --------------- -->


			<div class="container" style="margin-left: 150px;">
				<div class="row" style="margin-bottom: 40px; margin-left: -670px;">
					<div class="col-md-4 col-md-offset-4" style="background: center;">
						<div class="panel panel-default"
							style="height: 200px; width: 400px;">
							<div class="panel-heading">
								<h3 class="panel-title">
									<center>Medicare System DataBase Backup</center>
								</h3>
							</div>
							<div class="panel-body">
								<form method="post" action="Backup_Restore">
									<fieldset>


										<%@ page import="java.text.SimpleDateFormat"%>
										<%@ page import="java.util.*"%>


										<div class="form-group"></div>
							</div>
							&nbsp;&nbsp;
							<button class="btn btn-info" value="bac" name="back"
								style="margin-left: 115px; margin-top: -50px;" onclick="move2()">
								<span class="glyphicon glyphicon-open"></span> Backup To Cloude
							</button>
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

							<div class="alert alert-danger"
								style="width: 390px; margin-left: 5px;">
								<center>
									<strong>Backup Date/ <%=new SimpleDateFormat("yyyy-MM-dd").format(new Date())%>
									</strong>
								</center>


							</div>

							<div id="myProgress2" style="margin-top: -19px; height: 15px;">
								<div id="myBar2"></div>
							</div>
							<script type="text/javascript">
								function move2() {
									var elem = document
											.getElementById("myBar2");
									var width = 1;
									var id = setInterval(frame, 10);
									function frame() {
										if (width >= 100) {
											clearInterval(id);
										} else {
											width++;
											elem.style.width = width + '%';
										}
									}
								}
							</script>


							</fieldset>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>


		<div class="container" style="margin-left: 200px;">
			<div class="row">
				<div class="col-md-4 col-md-offset-4"
					style="background: center; margin-left: 370px; margin-top: -275px;">
					<div class="panel panel-default"
						style="height: 200px; width: 400px;">
						<div class="panel-heading">
							<h3 class="panel-title">
								<center>Medicare System DataBase Restore</center>
							</h3>
						</div>
						<div class="panel-body">
							<form method="post" action="Restore">
								<fieldset>



									<input type="file" name="pathw"
										style="width: 350px; height: 40px; margin-top: 65px;">

									<button class="btn btn-warning" value="res" name="rest"
										style="margin-left: 70px; margin-top: -175px;"
										onclick="move()">
										<span class="glyphicon glyphicon-refresh"></span> Restore From
										Cloude
									</button>
						</div>

						<script type="text/javascript">
							function move() {
								var elem = document.getElementById("myBar");
								var width = 1;
								var id = setInterval(frame, 10);
								function frame() {
									if (width >= 100) {
										clearInterval(id);
									} else {
										width++;
										elem.style.width = width + '%';
									}
								}
							}
						</script>



						<div id="myProgress" style="margin-top: -37px; height: 15px;">
							<div id="myBar"></div>
						</div>


						</fieldset>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


	<div class="container" style="margin-top: 300px;margin-left: -100px;">
		<div class="row">
			<div class="col-md-4 col-md-offset-4"
				style="background: center; margin-left: 910px; margin-top: -582px;">
				<div class="panel panel-default"
					style="height: 215px; width: 395px;">
					<div class="panel-heading">
						<h3 class="panel-title">
							<center>Backup And Restore Status</center>
						</h3>
					</div>
					<div class="panel-body"></div>
					
			
			
<div class="container" style="width:250px;margin-right: 300px;">
          
  <table class="table">
    <thead style="color: red;">
      <tr>
        <th>Last Backuped</th>
        <th>Last Restored</th>
        
      </tr>
    </thead>
    <tbody>
      
      
      <tr>
      
      <%try{ %>
      
      	<%ResultSet rs =Database.getData("select * from Backup_Recover_Status");
      		while(rs.next()){%>
      			
      			 <td><%= rs.getString("backup") %></td>
        		<td><%=rs.getString("recover") %></td>
      			
      			
      		<% }%>	
      	
      	
      	
      
      
      <%}catch(Exception e){
    	  
    	  e.printStackTrace();
    	  
      	} %>
      
       
      </tr>
    </tbody>
  </table>
</div>
						

	<div class="container" style="margin-left:-850px;margin-top: -220px;width: 1300px;">
    <div class="row">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Register New Admin Here</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form method="post" action="Admin_Register">
                    <fieldset>
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="User Name" name="user" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Password" name="password" type="password" value="">
			    		</div>
			    		
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Email" name="email" type="text" value="">
			    		</div>
			    		
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Register">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>
	
			
	
				
					
				</div>
	
			</div>
		</div>
	</div>


	


	<!-- Content --------------- -->

	<!-- /.container-fluid -->
	
	</div>
	<!-- ============================================================== -->
	<!-- End Page Content -->
	<!-- ============================================================== -->
	</div>
	<!-- ============================================================== -->
	<!-- End Wrapper -->
	<!-- ============================================================== -->
	<!-- ============================================================== -->
	<!-- All Jquery -->
	<!-- ============================================================== -->
	<script src="plugins/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- Menu Plugin JavaScript -->
	<script
		src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
	<!--slimscroll JavaScript -->
	<script src="js/jquery.slimscroll.js"></script>
	<!--Wave Effects -->
	<script src="js/waves.js"></script>
	<!--Counter js -->
	<script
		src="plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
	<script
		src="plugins/bower_components/counterup/jquery.counterup.min.js"></script>
	<!-- chartist chart -->
	<script src="plugins/bower_components/chartist-js/dist/chartist.min.js"></script>
	<script
		src="plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
	<!-- Sparkline chart JavaScript -->
	<script
		src="plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
	<!-- Custom Theme JavaScript -->
	<script src="js/custom.min.js"></script>
	<script src="js/dashboard1.js"></script>
	<script src="plugins/bower_components/toast-master/js/jquery.toast.js"></script>
</body>

</html>
