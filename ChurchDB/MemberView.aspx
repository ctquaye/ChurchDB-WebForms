<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberView.aspx.cs" Inherits="ChurchDB.MemberView" %>

<!DOCTYPE html>
<html lang="en">

<head>  
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>View Members</title>

   <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

	


	<script src="DataTables/jQuery-3.2.1/jQuery-3.2.1.js" type="text/javascript"></script>
	<script src="DataTables/jQuery-3.2.1/jQuery-3.2.1.min.js" type="text/javascript"></script>
   
	<script src="DataTables/datatables.js"></script>
	<script src="DataTables/datatables.min.js"></script>

	<script>
	   $(function () {
		   $("#dataTable").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
	   })

	</script>
	<style type="text/css">
		tr:hover {
		   
			color:forestgreen;
		}
		thead:hover {
			background-color:white;
		}
		thead {
			background-color:gainsboro;
			color:black;
		}
	</style>
</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
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
		<li class="breadcrumb-item active">Blank Page</li>
	  </ol>
	  <div class="row">
		<div class="col-12">
		  <h1>Membership Details</h1>
		   
		  <form runat="server">
						   <asp:SqlDataSource ID="dsMember" runat="server" 
	ConnectionString="Data Source=localhost\SqlExpress; Initial Catalog=ChurchDb; Persist Security Info=True; Integrated Security=SSPI"
	ProviderName="System.Data.SqlClient" 
			SelectCommand="Select id, firstname,surname,gender,marital_status,telephone,residence,profession,department FROM memberTable;"
			UpdateCommand="UPDATE [memberTable] SET firstname=@firstname, surname=@surname, gender=@gender, marital_status=@marital_status, telephone=@telephone, residence=@residence, profession=@profession, department=@department WHERE id=@id;"
			DeleteCommand="DELETE FROM [memberTable] WHERE [id]=@id">             
			   
			<UpdateParameters>                 
				 <asp:parameter Name="firstname" type="String" />
				 <asp:parameter Name="surname" type="String" />
				 <asp:parameter Name="gender"  Type="String"/>				 
				 <asp:parameter Name="marital_status" type="String" />
				 <asp:parameter Name="telephone" type="Int32" />                 
				 <asp:parameter Name="residence" type="String" />
				 <asp:parameter Name="department" type="String" />
				<asp:parameter Name="profession" type="String" />
			 </UpdateParameters>
									 
				   
			 <DeleteParameters>
				 <asp:Parameter Name="id" Type="int32"/>
			 </DeleteParameters>
	</asp:SqlDataSource>   
			   <div class="card mb-3">
		<div class="card-header">
		  <i class="fa fa-table"></i> Members Table</div>
		<div class="card-body">
			 <div class="table-responsive">
 <asp:GridView ID="dataTable" runat="server"  DataSourceID="dsMember"  width="100%" cellspacing="0" AutoGenerateColumns="false" CssClass="table table-dark table-striped" DataKeyNames="id">
	   
		 <Columns>    
			  
			<asp:Boundfield HeaderText="First Name" Datafield="firstname" SortExpression="firstname"/>
			<asp:Boundfield HeaderText="Last Name" DataField="surname" SortExpression="surname"/> 
			<asp:Boundfield HeaderText="Gender" DataField="gender" SortExpression="gender"/> 
			 <asp:Boundfield HeaderText="telephone" DataField="telephone" SortExpression="phone"/> 
			<asp:Boundfield HeaderText="Marital Status" DataField="marital_status" SortExpression="marital_status"/>  
			<asp:Boundfield HeaderText="Profession" DataField="profession" SortExpression="profession"/>             
			 <asp:Boundfield HeaderText="Department" DataField="department" SortExpression="department"/>   
			 <asp:Boundfield HeaderText="Residence" DataField="residence" SortExpression="residence"/>        
			 <asp:CommandField ShowEditButton="true" HeaderText="Edit" ButtonType="Button" /> 
			<asp:CommandField ShowDeleteButton="true" HeaderText="Delete" ButtonType="Button"/>         
						   
			</Columns>
		 </asp:GridView>
			</div> 
			</div>                  
			  </div>
			  </form>
		</div>
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

	<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
	<!-- Custom scripts for all pages-->
	<script src="js/sb-admin.min.js"></script>

</body>

</html>
