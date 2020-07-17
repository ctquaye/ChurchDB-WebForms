<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="ChurchDB.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
<body>
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
            <asp:TextBox class="form-control" runat="server" id="dob" placeholder="mm/dd/yyyy" type="text" aria-describedby="emailHelp"></asp:TextBox>
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
				<asp:TextBox type="text" runat="server" class="form-control" name="phone" id="phone"  placeholder="Phone"/></asp:TextBox>
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
</body>
</html>
