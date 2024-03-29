﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberForm.aspx.cs" Inherits="ChurchDB.MemberForm" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>View Members</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

  <link href="jqueryUI/jquery-ui.css" rel="stylesheet">

 <link href="DataTables/DataTables/css/dataTables.bootstrap.css" type="text/css" rel="stylesheet">
    <link href="DataTables/DataTables/css/dataTables.bootstrap.min.css" type="text/css" rel="stylesheet">

    <link href="DataTables/DataTables/css/dataTables.foundation.css" type="text/css" rel="stylesheet">
    <link href="DataTables/DataTables/css/dataTables.foundation.min.css" type="text/css" rel="stylesheet">

    <link href="DataTables/DataTables/css/dataTables.semanticui.css" type="text/css" rel="stylesheet">
    <link href="DataTables/DataTables/css/dataTables.semanticui.min.css" type="text/css" rel="stylesheet">

     <link href="DataTables/datatables.css" rel="stylesheet" type="text/css">
     <link href="DataTables/datatables.min.css" rel="stylesheet" type="text/css">


    <script src="DataTables/jQuery-3.2.1/jQuery-3.2.1.js" type="text/javascript"></script>
	<script src="DataTables/jQuery-3.2.1/jQuery-3.2.1.min.js" type="text/javascript"></script>
   
    <script src="DataTables/datatables.js"></script>
    <script src="DataTables/datatables.min.js"></script> 
    <script src="jqueryUI/jquery-ui.js"></script>       
</head>
    
<body class="fixed-nav sticky-footer bg-dark" id="page-top">
     <script>
       JQuery(function ($) {
             $( "#dob" ).datepicker({
                 changeMonth: true,
                 changeYear: true,
                 yearRange: "-100:+0",
             });
         } );          
  </script>
  <!-- Navigation-->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">Start Bootstrap</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
          <a class="nav-link" href="Dashboard.aspx">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Dashboard</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="MemberView.aspx">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">Membership</span>
          </a>
        </li>
           <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
          <a class="nav-link" href="MemberForm.aspx">
            <i class="fa fa-fw fa-area-chart"></i>
            <span class="nav-link-text">New Member</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
          <a class="nav-link" href="ManageUser.aspx">
            <i class="fa fa-fw fa-table"></i>
            <span class="nav-link-text">Manage Logins</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Components">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseComponents" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-wrench"></i>
            <span class="nav-link-text">Giving</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseComponents">
            <li>
              <a href="navbar.html">Offerings</a>
            </li>
            <li>
              <a href="cards.html">Tithes</a>
            </li>
              <li>
              <a href="cards.html">Pledges</a>
            </li>
              <li>
              <a href="cards.html">FundRaising</a>
            </li>
               <li>
              <a href="cards.html">Other</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Example Pages">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseExamplePages" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Example Pages</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseExamplePages">
            <li>
              <a href="login.html">Login Page</a>
            </li>
            <li>
              <a href="register.html">Registration Page</a>
            </li>
            <li>
              <a href="forgot-password.html">Forgot Password Page</a>
            </li>
            <li>
              <a href="blank.html">Blank Page</a>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
          <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
            <i class="fa fa-fw fa-sitemap"></i>
            <span class="nav-link-text">Menu Levels</span>
          </a>
          <ul class="sidenav-second-level collapse" id="collapseMulti">
            <li>
              <a href="#">Second Level Item</a>
            </li>
            <li>
              <a href="#">Second Level Item</a>
            </li>
            <li>
              <a href="#">Second Level Item</a>
            </li>
            <li>
              <a class="nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti2">Third Level</a>
              <ul class="sidenav-third-level collapse" id="collapseMulti2">
                <li>
                  <a href="#">Third Level Item</a>
                </li>
                <li>
                  <a href="#">Third Level Item</a>
                </li>
                <li>
                  <a href="#">Third Level Item</a>
                </li>
              </ul>
            </li>
          </ul>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
          <a class="nav-link" href="#">
            <i class="fa fa-fw fa-link"></i>
            <span class="nav-link-text">Link</span>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <ul class="navbar-nav ml-auto">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="messagesDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-envelope"></i>
            <span class="d-lg-none">Messages
              <span class="badge badge-pill badge-primary">12 New</span>
            </span>
            <span class="indicator text-primary d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
         
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fa fa-fw fa-bell"></i>
            <span class="d-lg-none">Alerts
              <span class="badge badge-pill badge-warning">6 New</span>
            </span>
            <span class="indicator text-warning d-none d-lg-block">
              <i class="fa fa-fw fa-circle"></i>
            </span>
          </a>
          <div class="dropdown-menu" aria-labelledby="alertsDropdown">
            <h6 class="dropdown-header">New Alerts:</h6>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-danger">
                <strong>
                  <i class="fa fa-long-arrow-down fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">
              <span class="text-success">
                <strong>
                  <i class="fa fa-long-arrow-up fa-fw"></i>Status Update</strong>
              </span>
              <span class="small float-right text-muted">11:21 AM</span>
              <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
            </a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item small" href="#">View all alerts</a>
          </div>
        </li>
        <li class="nav-item">
          <form class="form-inline my-2 my-lg-0 mr-lg-2">
            <div class="input-group">
              <input class="form-control" type="text" placeholder="Search for...">
              <span class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fa fa-search"></i>
                </button>
              </span>
            </div>
          </form>
        </li>
        <li class="nav-item">
          <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>
  <div class="content-wrapper">
    <div class="container-fluid">
      <!-- Breadcrumbs-->
      <ol class="breadcrumb">
        <li class="breadcrumb-item">
          <a href="index.html">Dashboard</a>
        </li>
        <li class="breadcrumb-item active">Membership</li>
      </ol>
      <div class="row">
        <div class="col-12">
          <h1>Membership Form</h1>
           
         
            <form runat="server">
                <div class="container">
          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputName">First name</label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true" style="margin-right:4px;"></i></span>
                <asp:TextBox class="form-control" runat="server" id="fname" type="text" aria-describedby="nameHelp" placeholder="Enter first name"></asp:TextBox>
                      </div>
              </div>
              <div class="col-md-6">
                <label for="exampleInputLastName">Last name</label>
                  <div class="input-group">
                  <span class="input-group-addon"><i class="fa fa-user fa" aria-hidden="true" style="margin-right:4px;"></i></span>
                <asp:TextBox class="form-control" runat="server" id="sname" type="text" aria-describedby="nameHelp" placeholder="Enter last name"></asp:TextBox>
              </div>
                </div>
            </div>
          </div>
          <div class="form-group">
              <div class="form-row">
              <div class="col-md-6">              
            <label for="exampleInputEmail1">Date of Birth</label>
                  <div class="input-group">
             <span class="input-group-addon"><i class="fa fa-calendar" aria-hidden="true" style="margin-right:4px;"></i></span>
            <asp:TextBox class="form-control" runat="server" id="dob" placeholder="mm/dd/yyyy" type="date" aria-describedby="emailHelp"></asp:TextBox>
                   </div>
          </div>
                  <div class="col-md-6">
                <label for="exampleConfirmPassword">Gender</label>
                <fieldset>  
    
	<i class="fa fa-male" aria-hidden="true"></i>
    <asp:RadioButton runat="server" type="radio" GroupName="gender" onCheckedChanged="male_CheckedChanged" id="male" Text="male"></asp:RadioButton>

    
	<i class="fa fa-female" aria-hidden="true"></i>
    <asp:RadioButton runat="server" type="radio" GroupName="gender" onCheckedChanged="male_CheckedChanged" id="female" Text="female"></asp:RadioButton>
                </fieldset>

              </div>
            </div>
          </div>

          <div class="form-group">
            <div class="form-row">
              <div class="col-md-6">
                <label for="exampleInputPassword1">Marital Status</label>
                  <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-diamond" aria-hidden="true" style="margin-right:4px;"></i></span>
               <asp:DropDownList runat="server" id="status" class="form-control" name="status">
	                <asp:ListItem text ="single" value="unmarried">Unmarried</asp:ListItem>
	                <asp:ListItem text ="married" value="married">Married</asp:ListItem>
                   <asp:ListItem text ="divorced" value="divorced">Divorced</asp:ListItem>
                   <asp:ListItem text ="widow" value="widow">Widow</asp:ListItem>
                   <asp:ListItem text ="widower" value="divorced">Widower</asp:ListItem>
                </asp:DropDownList>
              </div>
                  </div>
              <div class="col-md-6">
                <label for="exampleConfirmPassword">Telephone</label>
                  <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-phone" style="margin-right:4px;"></i></span>
				<asp:TextBox type="text" runat="server" class="form-control" name="phone" id="phone"  placeholder="Phone"></asp:TextBox>
                      </div>
              </div>
            </div>
          </div>
            <div class="form-group">
                 <label for="residence">Residential Address</label>
                <div class="input-group">
                 <span class="input-group-addon"><i class="fa fa-home" style="margin-right:4px;"></i></span>
                <asp:TextBox runat="server" id="residence" type="text" class="form-control" name="address"></asp:TextBox>
                    </div>
            </div>

                 <div class="form-group">
                 <label for="profession">Profession</label>
                <div class="input-group">
                 <span class="input-group-addon"><i class="fa fa-suitcase" style="margin-right:4px;"></i></span>
                <asp:TextBox type="text" runat="server" ID="profession" class="form-control" name="profession"></asp:TextBox>
                    </div>
            </div>

             <div class="form-group">
            
                <label for="department">Department</label>
                  <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-check-square" aria-hidden="true" style="margin-right:4px;"></i></span>
               <asp:DropDownList runat="server" id="selectdept" class="form-control" name="status">
	               <asp:ListItem value ="">None</asp:ListItem> 
                   <asp:ListItem value ="choir">Choir</asp:ListItem>
	                <asp:ListItem value ="intercessors">Intercessors</asp:ListItem>
                   <asp:ListItem value ="technical">Technical</asp:ListItem>
	                <asp:ListItem value ="ushering">Ushering</asp:ListItem>
                    <asp:ListItem value ="welfare">Welfare</asp:ListItem>
                </asp:DropDownList>
              </div>
                  </div>
            

          <asp:Button runat="server" text="Register" ID="Register" class="btn btn-primary btn-block" onClick="Register_Click"></asp:Button>
        </div>
                    </form>

        </div>
      </div>
    </div>
    <!-- /.container-fluid-->
    <!-- /.content-wrapper-->
    <footer class="sticky-footer">
      <div class="container">
        <div class="text-center">
          <small>Copyright © Your Website 2018</small>
        </div>
      </div>
    </footer>
    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fa fa-angle-up"></i>
    </a>
    <!-- Logout Modal-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">×</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="login.html">Logout</a>
          </div>
        </div>
      </div>
    </div>
    <!-- Bootstrap core JavaScript-->
   <!-- <script src="vendor/jquery/jquery.min.js"></script>-->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>
  </div>
</body>

</html>
