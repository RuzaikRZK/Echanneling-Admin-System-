<!DOCTYPE html>
<%@page import="Admin.TestReportAdapter"%>
<%@page import="Admin.Database"%>

<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" type="image/png" sizes="16x16" href="plugins/images/medicareimage/if_medical_icon_3_1290986.png">
    <title>Dashboard</title>
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

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

@import url("http://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css");
@import url("http://fonts.googleapis.com/css?family=Roboto:400,300,700italic,700,500&subset=latin,latin-ext");



<!------ Include the above in your HEAD tag ---------->

</head>
<!-- Again Cant Back In If once Logouted -->

<SCRIPT type="text/javascript">
    window.history.forward();
    function noBack() { window.history.forward(); }
    
  
</SCRIPT>
<style>

body {
        padding-top: 40px;
        padding-bottom: 40px;
    	
      }
	
	/* COMMON PRICING STYLES */
		.panel.price,
		.panel.price>.panel-heading{
			border-radius:0px;
			 -moz-transition: all .3s ease;
			-o-transition:  all .3s ease;
			-webkit-transition:  all .3s ease;
		}
		.panel.price:hover{
			box-shadow: 0px 0px 30px rgba(0,0,0, .2);
		}
		.panel.price:hover>.panel-heading{
			box-shadow: 0px 0px 30px rgba(0,0,0, .2) inset;
		}
		
				
		.panel.price>.panel-heading{
			box-shadow: 0px 5px 0px rgba(50,50,50, .2) inset;
			text-shadow:0px 3px 0px rgba(50,50,50, .6);
		}
			
		.price .list-group-item{
			border-bottom-:1px solid rgba(250,250,250, .5);
		}
		
		.panel.price .list-group-item:last-child {
			border-bottom-right-radius: 0px;
			border-bottom-left-radius: 0px;
		}
		.panel.price .list-group-item:first-child {
			border-top-right-radius: 0px;
			border-top-left-radius: 0px;
		}
		
		.price .panel-footer {
			color: #fff;
			border-bottom:0px;
			background-color:  rgba(0,0,0, .1);
			box-shadow: 0px 3px 0px rgba(0,0,0, .3);
		}
		
		
		.panel.price .btn{
			box-shadow: 0 -1px 0px rgba(50,50,50, .2) inset;
			border:0px;
		}
		
	/* green panel */
	
		
		.price.panel-green>.panel-heading {
			color: #fff;
			background-color: #57AC57;
			border-color: #71DF71;
			border-bottom: 1px solid #71DF71;
		}
		
			
		.price.panel-green>.panel-body {
			color: #fff;
			background-color: #65C965;
		}
				
		
		.price.panel-green>.panel-body .lead{
				text-shadow: 0px 3px 0px rgba(50,50,50, .3);
		}
		
		.price.panel-green .list-group-item {
			color: #333;
			background-color: rgba(50,50,50, .01);
			font-weight:600;
			text-shadow: 0px 1px 0px rgba(250,250,250, .75);
		}
		
		/* blue panel */
	
		
		.price.panel-blue>.panel-heading {
			color: #fff;
			background-color: #608BB4;
			border-color: #78AEE1;
			border-bottom: 1px solid #78AEE1;
		}
		
			
		.price.panel-blue>.panel-body {
			color: #fff;
			background-color: #73A3D4;
		}
				
		
		.price.panel-blue>.panel-body .lead{
				text-shadow: 0px 3px 0px rgba(50,50,50, .3);
		}
		
		.price.panel-blue .list-group-item {
			color: #333;
			background-color: rgba(50,50,50, .01);
			font-weight:600;
			text-shadow: 0px 1px 0px rgba(250,250,250, .75);
		}
		
		/* red price */
		
	
		.price.panel-red>.panel-heading {
			color: #fff;
			background-color: #D04E50;
			border-color: #FF6062;
			border-bottom: 1px solid #FF6062;
		}
		
			
		.price.panel-red>.panel-body {
			color: #fff;
			background-color: #EF5A5C;
		}
		
		
		
		
		.price.panel-red>.panel-body .lead{
				text-shadow: 0px 3px 0px rgba(50,50,50, .3);
		}
		
		.price.panel-red .list-group-item {
			color: #333;
			background-color: rgba(50,50,50, .01);
			font-weight:600;
			text-shadow: 0px 1px 0px rgba(250,250,250, .75);
		}
		
		/* grey price */
		
	
		.price.panel-grey>.panel-heading {
			color: #fff;
			background-color: #6D6D6D;
			border-color: #B7B7B7;
			border-bottom: 1px solid #B7B7B7;
		}
		
			
		.price.panel-grey>.panel-body {
			color: #fff;
			background-color: #808080;
		}
		

		
		.price.panel-grey>.panel-body .lead{
				text-shadow: 0px 3px 0px rgba(50,50,50, .3);
		}
		
		.price.panel-grey .list-group-item {
			color: #333;
			background-color: rgba(50,50,50, .01);
			font-weight:600;
			text-shadow: 0px 1px 0px rgba(250,250,250, .75);
		}
		
		/* white price */
		
	
		.price.panel-white>.panel-heading {
			color: #333;
			background-color: #f9f9f9;
			border-color: #ccc;
			border-bottom: 1px solid #ccc;
			text-shadow: 0px 2px 0px rgba(250,250,250, .7);
		}
		
		.panel.panel-white.price:hover>.panel-heading{
			box-shadow: 0px 0px 30px rgba(0,0,0, .05) inset;
		}
			
		.price.panel-white>.panel-body {
			color: #fff;
			background-color: #dfdfdf;
		}
				
		.price.panel-white>.panel-body .lead{
				text-shadow: 0px 2px 0px rgba(250,250,250, .8);
				color:#666;
		}
		
		.price:hover.panel-white>.panel-body .lead{
				text-shadow: 0px 2px 0px rgba(250,250,250, .9);
				color:#333;
		}
		
		.price.panel-white .list-group-item {
			color: #333;
			background-color: rgba(50,50,50, .01);
			font-weight:600;
			text-shadow: 0px 1px 0px rgba(250,250,250, .75);
		}

	

.login-container{
    position: relative;
    width: 300px;
    margin: 80px auto;
    padding: 20px 40px 40px;
    text-align: center;
    background: #fff;
    border: 1px solid #ccc;
}

#output{
    position: absolute;
    width: 300px;
    top: -75px;
    left: 0;
    color: #fff;
}

#output.alert-success{
    background: rgb(25, 204, 25);
}

#output.alert-danger{
    background: rgb(228, 105, 105);
}


.login-container::before,.login-container::after{
    content: "";
    position: absolute;
    width: 100%;height: 100%;
    top: 3.5px;left: 0;
    background: #fff;
    z-index: -1;
    -webkit-transform: rotateZ(4deg);
    -moz-transform: rotateZ(4deg);
    -ms-transform: rotateZ(4deg);
    border: 1px solid #ccc;

}

.login-container::after{
    top: 5px;
    z-index: -2;
    -webkit-transform: rotateZ(-2deg);
     -moz-transform: rotateZ(-2deg);
      -ms-transform: rotateZ(-2deg);

}

.avatar{
    width: 100px;height: 100px;
    margin: 10px auto 30px;
    border-radius: 100%;
    border: 2px solid #aaa;
    background-size: cover;
}

.form-box input{
    width: 100%;
    padding: 10px;
    height:40px;
    border: 1px solid #ccc;;
    background: #fafafa;
    transition:0.2s ease-in-out;

}

.form-box input:focus{
    outline: 0;
    background: #eee;
}



.form-box button.login{
    margin-top:15px;
    padding: 10px 20px;
}

.progress{
    width: 150px;
    height: 150px;
    line-height: 150px;
    background: none;
    margin: 0 auto;
    box-shadow: none;
    position: relative;
}
.progress:after{
    content: "";
    width: 100%;
    height: 100%;
    border-radius: 50%;
    border: 12px solid #fff;
    position: absolute;
    top: 0;
    left: 0;
}
.progress > span{
    width: 50%;
    height: 100%;
    overflow: hidden;
    position: absolute;
    top: 0;
    z-index: 1;
}
.progress .progress-left{
    left: 0;
}
.progress .progress-bar{
    width: 100%;
    height: 100%;
    background: none;
    border-width: 12px;
    border-style: solid;
    position: absolute;
    top: 0;
}
.progress .progress-left .progress-bar{
    left: 100%;
    border-top-right-radius: 80px;
    border-bottom-right-radius: 80px;
    border-left: 0;
    -webkit-transform-origin: center left;
    transform-origin: center left;
}
.progress .progress-right{
    right: 0;
}
.progress .progress-right .progress-bar{
    left: -100%;
    border-top-left-radius: 80px;
    border-bottom-left-radius: 80px;
    border-right: 0;
    -webkit-transform-origin: center right;
    transform-origin: center right;
    animation: loading-1 1.8s linear forwards;
}
.progress .progress-value{
    width: 90%;
    height: 90%;
    border-radius: 50%;
    background: #44484b;
    font-size: 24px;
    color: #fff;
    line-height: 135px;
    text-align: center;
    position: absolute;
    top: 5%;
    left: 5%;
}
.progress.blue .progress-bar{
    border-color: #E15858;
}
.progress.blue .progress-left .progress-bar{
    animation: loading-2 1.5s linear forwards 1.8s;
}
.progress.yellow .progress-bar{
    border-color: #1791F5;
}
.progress.yellow .progress-left .progress-bar{
    animation: loading-3 1s linear forwards 1.8s;
}
.progress.pink .progress-bar{
    border-color: #ed687c;
}
.progress.pink .progress-left .progress-bar{
    animation: loading-4 0.4s linear forwards 1.8s;
}
.progress.green .progress-bar{
    border-color: #1abc9c;
}
.progress.green .progress-left .progress-bar{
    animation: loading-5 1.2s linear forwards 1.8s;
}
@keyframes loading-1{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(180deg);
        transform: rotate(180deg);
    }
}
@keyframes loading-2{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(144deg);
        transform: rotate(144deg);
    }
}
@keyframes loading-3{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(90deg);
        transform: rotate(90deg);
    }
}
@keyframes loading-4{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(36deg);
        transform: rotate(36deg);
    }
}
@keyframes loading-5{
    0%{
        -webkit-transform: rotate(0deg);
        transform: rotate(0deg);
    }
    100%{
        -webkit-transform: rotate(126deg);
        transform: rotate(126deg);
    }
}
@media only screen and (max-width: 990px){
    .progress{ margin-bottom: 20px; }
}

table#acrylic {
            border-collapse: separate;
            background: #fff;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            margin: 50px auto;
            -moz-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
            -webkit-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
            cursor: pointer;
        }
        
        #acrylic thead {
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }
        
        #acrylic thead th {
            font-family: 'Roboto';
            font-size: 16px;
            font-weight: 400;
            color: #fff;
            text-shadow: 1px 1px 0px rgba(0, 0, 0, 0.5);
            text-align: left;
            padding: 20px;
            background-size: 100%;
            background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #646f7f), color-stop(100%, #4a5564));
            background-image: -moz-linear-gradient(#646f7f, #4a5564);
            background-image: -webkit-linear-gradient(#646f7f, #4a5564);
            background-image: linear-gradient(#646f7f, #4a5564);
            border-top: 1px solid #858d99;
        }
        
        #acrylic thead th:first-child {
            -moz-border-top-right-radius: 5px;
            -webkit-border-top-left-radius: 5px;
            border-top-left-radius: 5px;
        }
        
        #acrylic thead th:last-child {
            -moz-border-top-right-radius: 5px;
            -webkit-border-top-right-radius: 5px;
            border-top-right-radius: 5px;
        }
        
        #acrylic tbody tr td {
            font-family: 'Open Sans', sans-serif;
            font-weight: 400;
            color: #5f6062;
            font-size: 13px;
            padding: 20px 20px 20px 20px;
            border-bottom: 1px solid #e0e0e0;
        }
        
        #acrylic tbody tr:nth-child(2n) {
            background: #f0f3f5;
        }
        
        #acrylic tbody tr:last-child td {
            border-bottom: none;
        }
        
        #acrylic tbody tr:last-child td:first-child {
            -moz-border-bottom-right-radius: 5px;
            -webkit-border-bottom-left-radius: 5px;
            border-bottom-left-radius: 5px;
        }
        
        #acrylic tbody tr:last-child td:last-child {
            -moz-border-bottom-right-radius: 5px;
            -webkit-border-bottom-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }
        
        #acrylic tbody:hover > tr td {
            filter: progid: DXImageTransform.Microsoft.Alpha(Opacity=50);
            opacity: 0.5;
        }
        
        #acrylic tbody:hover > tr:hover td {
            text-shadow: none;
            color: #2d2d2d;
            filter: progid: DXImageTransform.Microsoft.Alpha(enabled=false);
            opacity: 1;
            transition: 0.2s all;
        }


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
                	    <!-- /Logoout Button Here -->
                
                		<div class="container">
  
            
           
         
                
                
                   		
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
                        <h4 class="page-title">Reports</h4> </div>
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
                
                 <%@ page import="java.sql.ResultSet" %>
		      <%@ page import="java.util.Date" %>
		        <%@ page import="java.text.SimpleDateFormat" %>
		<%@ page language="java" %>
                
                	
<div class="container">
	<div class="row">
    			<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3">
				
					<!-- PRICE ITEM -->
					<div class="panel price panel-red">
						<div class="panel-heading  text-center">
						<h3>Total Incomes</h3>
						</div>
						
								
						
					
									
									
									
									
							
								
								
							
							
							<%
							try{
								
								ResultSet rs = Database.getData("select count(*)as total from appointment");
								while(rs.next()){
									int i=rs.getInt("total")*250;
									int i2=rs.getInt("total");
									
						%>		
						
						<div class="panel-body text-center">
							<p class="lead" style="font-size:40px"><strong><%="Rs."+i %></strong></p>
						</div>
						<ul class="list-group list-group-flush text-center">
							<li class="list-group-item"><i class="icon-ok text-danger"></i><%="Total Appointments - "+i2 %></li>
							
						</ul>
						<% }%>	
						
							
							<%	
								
							}catch(Exception e){
								e.printStackTrace();
								
							} 
							
							%>
					</div>
					<!-- /PRICE ITEM -->
					<%@page import="Admin.App"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Admin.Appointment"%>
<%@page import="Admin.Database"%>
					
				</div>
						<%
						
						int i=0;
						Date d = new Date();
			   	        SimpleDateFormat ft = new SimpleDateFormat ("yyyy-MM-dd");
			   	        String date = ft.format(d);
			  		
			  		
			  			Appointment app = new Appointment();
			  			ArrayList <App> al = new ArrayList<App>();
			  			
			  			al = app.getApp(date);
			  			
			  			
			  			for(App a : al){	
			  				
			  					
			  				i++;
			  				
			  				
			  			}
			  			
			  			int j=i*250;
						
						
						
						%>
				
				
				
				
					<div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="margin-left:-10px;">
				
					<!-- PRICE ITEM -->
					<div class="panel price panel-blue">
						<div class="panel-heading arrow_box text-center">
						<h3>Daily Incomes</h3>
						</div>
						<div class="panel-body text-center">
							<p class="lead" style="font-size:40px"><strong><%="Rs."+j %></strong></p>
						</div>
						<ul class="list-group list-group-flush text-center">
							<li class="list-group-item"><i class="icon-ok text-info"></i><%="Daily Appointments - "+i %></li>
						
						</ul>
						
					</div>
					<!-- /PRICE ITEM -->
				
				
				
				</div>
				
				</div>
						
				 
<div class="container" style="width: 600px;margin-right: 700px;margin-top: 10px;">
  
  <div class="panel panel-default">
    <div class="panel-heading">Appointment Percentages Statistics</div>
    <div class="panel-body">
    
    			
				<%
				
					try{
						ResultSet rs = Database.getData("select count(*)as total from appointment");
						while(rs.next()){
							
				%>	
				
				<div class="container" style="margin-left: -90px;">
    <div class="row">
        <div class="col-md-3 col-sm-6">
            <div class="progress blue">
                <span class="progress-left">
                    <span class="progress-bar"></span>
                </span>
                <span class="progress-right">
                    <span class="progress-bar"></span>
                </span>
                
                <%double i3 =(double) rs.getInt("total")/100; %>
               
                
               
                
                <div class="progress-value"><%=i3+"%" %></div>
            </div>
        </div>
        
        <% }%>		
        
        	<% 		
					
					}catch(Exception e){
						
						
						
					}
				
				
				
				%>
				
				
			<%double k =(double) i/100; %>
			<%System.out.println(k); %>
				
				
				
			<%TestReportAdapter t = new TestReportAdapter();
			
			
			%>
				
        
        
        <div class="col-md-3 col-sm-6" style="margin-left: -10px;">
            <div class="progress yellow">
                <span class="progress-left">
                    <span class="progress-bar"></span>
                </span>
                <span class="progress-right">
                    <span class="progress-bar"></span>
                </span>
                <div class="progress-value"><%=k+"%" %></div>
            </div>
        </div>
    </div>
</div>
				
                
                
    <img src="plugins/images/medicareimage/Untitled.png">
    
    
    
    	
			<div class="wrapper" style="margin-left: 530px;margin-top: -620px;" >
        <table id="acrylic">
            <thead>
                <tr>
                   
                    <th>Name</th>
                    <th>MID</th>
                    
                      <th>Email</th>
                       <th>Available</th>
                    
                </tr>
            </thead>
            <tbody>
               <%
  		
  			try{
  			ResultSet rs = Database.getData("select * from doctor where status=1");
  			
  			while(rs.next()){
  				
  			
  				
  		%>		
  				
  		
                    <tr>
                       	
                        <td><%=rs.getString("name") %></td>
                        <td><%=rs.getString("MID") %></td>
                       
                        
                        <td><%=rs.getString("email") %></td>
                         <td>Online</td>
                        
                       
                    </tr>
                    
                    	<% }%>
                    <%}catch(Exception e){
  				
  				
  				
  					} %>
                    
               
            </tbody>
        </table>
    </div>
			
    
    
    
    
    </div>
  </div>
</div>
						
		
			
				
				
			
                
                
     
                
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
</body>

</html>
