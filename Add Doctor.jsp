<!DOCTYPE html>
<%@page import="Admin.Database"%>
<html lang="en">


<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/medicareimage/if_medical_icon_3_1290986.png">
    <title>Doctor Management</title>
    <!-- Bootstrap Core CSS -->
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css" rel="stylesheet">
    <!-- toast CSS -->
    <link href="plugins/bower_components/toast-master/css/jquery.toast.css" rel="stylesheet">
    <!-- morris CSS -->
    <link href="plugins/bower_components/morrisjs/morris.css" rel="stylesheet">
    <!-- chartist CSS -->
    <link href="plugins/bower_components/chartist-js/dist/chartist.min.css" rel="stylesheet">
    <link href="plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.css" rel="stylesheet">
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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://dl.dropboxusercontent.com/u/86701580/mypersonalcdn/renda/renda-icon-font.css">

<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

  <!-- Add this css in head tag -->
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

</head>

<style>

	body{padding-top:20px;}

</style>


<body class="fix-header">
    <!-- ============================================================== -->
    <!-- Preloader -->
    <!-- ============================================================== -->
    <div class="preloader">
        <svg class="circular" viewBox="25 25 50 50">
            <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10" />
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
                   
                    <a class="logo" href="Dashboard.jsp">
                   
                        <!-- Logo icon image, you can use font-icon also --><b>
                        <!--This is dark logo icon--><!--This is light logo icon--><img src="plugins/images/medicareimage/Untitled-new.png" alt="home" class="light-logo" style="margin-top:10px;height: 50px;width: 215px;"/>
                     </b>
                        
                     </span> </a>
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
                    <h3><span class="fa-fw open-close"><i class="ti-close ti-menu"></i></span> <span class="hide-menu">Navigation</span></h3>
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
                        <h4 class="page-title">Add Doctor</h4> </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        
                           
                       
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
                <!-- ============================================================== -->
                <!-- Different data widgets -->
                <!-- ============================================================== -->
                <!-- .row -->
                
                    
                    
                
                <!-- Content --------------- -->
                
    					<div class="container">
    <div class="row" style="width: 1800px;margin-left: -600px;">
		<div class="col-md-4 col-md-offset-4">
    		<div class="panel panel-default">
			  	<div class="panel-heading">
			    	<h3 class="panel-title">Doctor Registration Form</h3>
			 	</div>
			  	<div class="panel-body">
			    	<form method="post" action="AddDoctor">
                    <fieldset>
                    
                    
                    
			    	  	<div class="form-group">
			    		    <input class="form-control" placeholder="Provide Password" name="pass" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Enter Doctor Name" name="name" type="text" value="">
			    		</div>
			    		
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Enter Doctor NIC" name="nic" type="text" value="">
			    		</div>
			    		
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Doctor Medicale ID" name="mid" type="text" value="">
			    		</div>
			    		
			    		<div class="form-group">
			    		    <input class="form-control" placeholder="Enter Doctor Type(Specialist For)" name="type" type="text">
			    		</div>
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Doctor Email" name="email" type="email" value="">
			    		</div>
			    		
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Doctor Age" name="age" type="number" value="">
			    		</div>
			    		
			    		<div class="form-group">
			    			<input class="form-control" placeholder="Doctor Address" name="address" type="text" value="">
			    		</div>
			    		
			    			<div class="form-group">
			    			<input class="form-control" placeholder="Doctor Contact Number" name="contact" type="text" value="">
			    		</div>
			    		
			    		<input class="btn btn-lg btn-success btn-block" type="submit" value="Register Doctor">
			    	</fieldset>
			      	</form>
			    </div>
			</div>
		</div>
	</div>
</div>         

		<%@ page import="java.sql.ResultSet" %>
		<%@ page language="java" %>
		

		 <div class="col-lg-4 col-sm-6 col-xs-12" style="margin-left: 600px;margin-top: -615px;">
                        <div class="white-box analytics-info">
                            <h3 class="box-title" style="font-size: 15px;">Total Registerd Doctors</h3>
                            <ul class="list-inline two-part">
                                <li>
                                    <div id=""><label><img alt="" src="plugins/images/medicareimage/doc.png"></label></div>
                                </li>
                                
                                <% ResultSet rs = Database.getData("select count(*) as total from doctor");
                                
                                		while(rs.next()){
                                			
                                			
                                			
                                			
                                		
                                
                                %>
                                	<li class="text-right"><i class="ti-arrow-up text-purple"></i> <span class="counter text-purple" style="font-size:50px;"><%= rs.getInt("total") %></span></li>
                                
                                <% }%>
                                
                              
                                
                            </ul>
                        </div>
                    </div>



		<a href="doctorsearch.jsp" class="btn btn-warning" style="margin-top: -870px;margin-left: 615px;"><span class="glyphicon glyphicon-download-alt"></span> Edit Doctor Details</a>
    
            
                <!-- Content --------------- -->
                
            <!-- /.container-fluid -->
            <footer class="footer text-center"> 2018 &copy; RZK Technology  </footer>
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
    <script src="plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js"></script>
    <!--slimscroll JavaScript -->
    <script src="js/jquery.slimscroll.js"></script>
    <!--Wave Effects -->
    <script src="js/waves.js"></script>
    <!--Counter js -->
    <script src="plugins/bower_components/waypoints/lib/jquery.waypoints.js"></script>
    <script src="plugins/bower_components/counterup/jquery.counterup.min.js"></script>
    <!-- chartist chart -->
    <script src="plugins/bower_components/chartist-js/dist/chartist.min.js"></script>
    <script src="plugins/bower_components/chartist-plugin-tooltip-master/dist/chartist-plugin-tooltip.min.js"></script>
    <!-- Sparkline chart JavaScript -->
    <script src="plugins/bower_components/jquery-sparkline/jquery.sparkline.min.js"></script>
    <!-- Custom Theme JavaScript -->
    <script src="js/custom.min.js"></script>
    <script src="js/dashboard1.js"></script>
    <script src="plugins/bower_components/toast-master/js/jquery.toast.js"></script>
    
  <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/Counter-Up/1.0.0/jquery.counterup.min.js"></script>
</body>

</html>
