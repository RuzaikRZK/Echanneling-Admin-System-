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
    <title>Doctor Details</title>
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




</head>

<style>
	.buying-selling.active {
    background: #7BB712;   
}

.buying-selling {
    width: 130px; 
    padding: 10px;
    position: relative;
}

.buying-selling-word {
    font-size: 15px;
    font-weight: 600;
    margin-left: 22px;
}

.radio-dot:before, .radio-dot:after {
    content: "";
    display: block;
    position: absolute;
    background: #fff;
    border-radius: 100%;
}

.radio-dot:before {
    width: 20px;
    height: 20px;
    border: 1px solid #ccc;
    top: 10px;
    left: 16px;
}

.radio-dot:after {
    width: 12px;
    height: 12px;
    border-radius: 100%;
    top: 14px;
    left: 20px;
}

.buying-selling.active .buying-selling-word {
    color: #fff;
}

.buying-selling.active .radio-dot:after {
    background: #426C2A;
}

.buying-selling.active .radio-dot:before {
    background: #fff;
    border-color: #699D17;
}

.buying-selling:hover .radio-dot:before {
    border-color: #adadad;
}

.buying-selling.active:hover .radio-dot:before {
    border-color: #699D17;
}


.buying-selling.active .radio-dot:after {
    background: #426C2A;
}

.buying-selling:hover .radio-dot:after {
    background: #e6e6e6;
}

.buying-selling.active:hover .radio-dot:after {
    background: #426C2A;
    
}

@media (max-width: 400px) {
    
    .mobile-br {
        display: none;   
    }

    .buying-selling {
        width: 49%;
        padding: 10px;
        position: relative;
    }

}


.filterable {
    margin-top: 15px;
}
.filterable .panel-heading .pull-right {
    margin-top: -20px;
   
}
.filterable .filters input[disabled] {
    background-color: transparent;
    border: none;
    cursor: auto;
    box-shadow: none;
    padding: 0;
    height: auto;
}
.filterable .filters input[disabled]::-webkit-input-placeholder {
    color: #333;
}
.filterable .filters input[disabled]::-moz-placeholder {
    color: #333;
}
.filterable .filters input[disabled]:-ms-input-placeholder {
    color: #333;
}




</style>

<script type="text/javascript">


$(window).resize(function() {
  if ($(window).width() <= 600) {
    $('#prop-type-group').removeClass('btn-group');
    $('#prop-type-group').addClass('btn-group-vertical');
  } else {
    $('#prop-type-group').addClass('btn-group');
    $('#prop-type-group').removeClass('btn-group-vertical');
  }
});

/*
Please consider that the JS part isn't production ready at all, I just code it to show the concept of merging filters and titles together !
*/
$(document).ready(function(){
    $('.filterable .btn-filter').click(function(){
        var $panel = $(this).parents('.filterable'),
        $filters = $panel.find('.filters input'),
        $tbody = $panel.find('.table tbody');
        if ($filters.prop('disabled') == true) {
            $filters.prop('disabled', false);
            $filters.first().focus();
        } else {
            $filters.val('').prop('disabled', true);
            $tbody.find('.no-result').remove();
            $tbody.find('tr').show();
        }
    });

    $('.filterable .filters input').keyup(function(e){
        /* Ignore tab key */
        var code = e.keyCode || e.which;
        if (code == '9') return;
        /* Useful DOM data and selectors */
        var $input = $(this),
        inputContent = $input.val().toLowerCase(),
        $panel = $input.parents('.filterable'),
        column = $panel.find('.filters th').index($input.parents('th')),
        $table = $panel.find('.table'),
        $rows = $table.find('tbody tr');
        /* Dirtiest filter function ever ;) */
        var $filteredRows = $rows.filter(function(){
            var value = $(this).find('td').eq(column).text().toLowerCase();
            return value.indexOf(inputContent) === -1;
        });
        /* Clean previous no-result if exist */
        $table.find('tbody .no-result').remove();
        /* Show all rows, hide filtered ones (never do that outside of a demo ! xD) */
        $rows.show();
        $filteredRows.hide();
        /* Prepend no-result row if all rows are filtered */
        if ($filteredRows.length === $rows.length) {
            $table.find('tbody').prepend($('<tr class="no-result text-center"><td colspan="'+ $table.find('.filters th').length +'">No result found</td></tr>'));
        }
    });
});
</script>

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
                        <h4 class="page-title">Doctor Details</h4> </div>
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
   
    <div class="row" style="width: 1070px;">
        <div class="panel panel-primary filterable">
            <div class="panel-heading">
                <h3 class="panel-title">Available Doctors</h3>
                <div class="pull-right">
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
            </div>
            
            <form action="BannedDoctor" method="post">
                	
            <table class="table" id="table">
                <thead>
                	
                <%@ page import="java.sql.ResultSet" %>
				<%@ page language="java" %>
                
                    <tr class="filters">
                    	<th>#</th>
                        <th><input type="text" class="form-control" placeholder="Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Medicale Id" disabled></th>
                        <th>Specialist</th>
                         <th>NIC</th>
                         <th>Email</th>
                        
                    </tr>
                </thead>
                <tbody>
                
         <%
  		
  			try{
  			ResultSet rs = Database.getData("select * from doctor where available='unbanned'");
  			
  			while(rs.next()){
  				
  			
  				
  		%>		
  				
  		
  			
  			
  			
  			
  			
  			
  		
                    <tr>
                       	<td><%=rs.getString("userID") %></td>
                        <td><%=rs.getString("name") %></td>
                        <td><%=rs.getString("MID") %></td>
                        <td><%=rs.getString("spec") %></td>
                        <td><%=rs.getString("NIC") %></td>
                        <td><%=rs.getString("email") %></td>
                        <td><button name="delete" value=""  class="btn btn-xs btn-warning" onclick=""><span class="glyphicon glyphicon-remove"></span> Edit</button></td>
                          <td><button name="banned" value="<%= rs.getString(1) %>"   class="btn btn-sm btn-danger" onclick=""><span class="glyphicon glyphicon-lock"></span> Banned Doctor</button></td>
                    </tr>
                    
                    	<% }%>
                    <%}catch(Exception e){
  				
  				
  				
  					} %>
                    
                </tbody>
            </table>
            </form>
        </div>
    </div>
</div>
       					
       				
       					  <div class="container" style="margin-left:-312px;margin-top: -45px;">    
        <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">                    
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Edit Doctor Details In Here</div>
                        
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                       <form action="DoctorUpdate" method="post">    
                       
                         <div style="margin-bottom: 25px;width:450px;" class="input-group">
                                       
                                        <input id="uid" type="text" class="form-control" name="uid" value="" placeholder="#" readonly="readonly">                                        
                                    </div>
                                    
                       
                       
                       <div style="margin-bottom: 25px;width:450px;" class="input-group">
                                       
                                        <input id="name" type="text" class="form-control" name="name" value="" placeholder="Doctor Name" >                                        
                                    </div>
                                    
                                      <div style="margin-bottom: 25px;width:450px;" class="input-group">
                                       
                                        <input id="mid" type="text" class="form-control" name="mid" value="" placeholder="MID">                                        
                                    </div>
                                    
                                      <div style="margin-bottom: 25px;width:450px;" class="input-group">
                                       
                                        <input id="spec" type="text" class="form-control" name="spec" value="" placeholder="Specialist">                                        
                                    </div>
                                    
                                      <div style="margin-bottom: 25px;width:450px;" class="input-group">
                                       
                                        <input id="nic" type="text" class="form-control" name="nic" value="" placeholder="NIC">                                        
                                    </div>
                                    
                                      <div style="margin-bottom: 25px;width:450px;" class="input-group">
                                       
                                        <input id="email" type="text" class="form-control" name="email" value="" placeholder="Email">                                        
                                    </div>
                                
                            
                                    <button class="btn btn-success"  class="glyphicon glyphicon-repeat" value="u" name="update" type="submit" > Update</button>
                              </form>
                               
                                </div>    
                                
                              
                        
                      
                                    
                        
                           
                         



                        </div>                     
                    </div>  
        </div>			
       				
       				
       				
       				
       				
       				
       				
             <script>
       				
       						var table = document.getElementById('table');
       						for(var i =0;i<table.rows.length;i++){
       							
       							table.rows[i].onclick= function (){
       								
       								
       								//rIndex = this.rowsIndex;
       								document.getElementById("uid").value=this.cells[0].innerHTML;
       								document.getElementById("name").value=this.cells[1].innerHTML;
       								document.getElementById("mid").value=this.cells[2].innerHTML;
       								document.getElementById("spec").value=this.cells[3].innerHTML;
       								document.getElementById("nic").value=this.cells[4].innerHTML;
       								document.getElementById("email").value=this.cells[5].innerHTML;
       								
       							}
       							
       						}
       		
       				
       				
       				</script>
       				
       			
       		   <!-- Banned Doctor table --------------- -->	
       			
       			 <div class="row">
        <div class="panel panel-primary filterable" style="width: 530px;margin-left: 568px;margin-top: -526px;height: 505px;">
            <div class="panel-heading">
                <h3 class="panel-title">Banned Doctors</h3>
                <div class="pull-right">
                    <button class="btn btn-default btn-xs btn-filter"><span class="glyphicon glyphicon-filter"></span> Filter</button>
                </div>
            </div>
            
            <form action="ActivateDoctor" method="post">
                	
            <table class="table" id="table">
                <thead>
                	
                <%@ page import="java.sql.ResultSet" %>
				<%@ page language="java" %>
                
                    <tr class="filters">
                    	<th>#</th>
                        <th><input type="text" class="form-control" placeholder="Name" disabled></th>
                        <th><input type="text" class="form-control" placeholder="Medicale Id" disabled></th>
                       
                        
                    </tr>
                </thead>
                <tbody>
                
         <%
  		
  			try{
  			ResultSet rs = Database.getData("select * from doctor where available='banned'");
  			
  			while(rs.next()){
  				
  			
  				
  		%>		
  				
  		
  			
  			
  			
  			
  			
  			
  		
                    <tr>
                       	<td><%=rs.getString("userID") %></td>
                        <td><%=rs.getString("name") %></td>
                        <td><%=rs.getString("MID") %></td>
                        
                      
                          <td><button name="activate" value="<%= rs.getString(1) %>"   class="btn btn-sm btn-success" onclick=""><span class="glyphicon glyphicon-open"></span> Activate Doctor</button></td>
                    </tr>
                    
                    	<% }%>
                    <%}catch(Exception e){
  				
  				
  				
  					} %>
                    
                </tbody>
            </table>
            </form>
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
