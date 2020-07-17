<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberForm.aspx.cs" Inherits="ChurchDB.MemberForm" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Membership Form</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
  <link href="jqueryUI/jquery-ui.css" rel="stylesheet">

    <script type="text/javascript" src="Scripts/jquery-1.10.2.js"> </script>
    <script type="text/javascript" src="jqueryUI/jquery-ui.js"> </script>
    <script>

 jQuery(function($) {
    
     $("#dob").datepicker({
         yearRange: "-110:+0",
             changeMonth: true,
             changeYear: true,
             
         });
     } );
        
  </script>
    
</head>

<body class="bg-dark" style="background-image:url(img/waves2.jpg);">
  <div class="container">
      <div class="row">
      <div class="col-md-3">
      </div><div class="col-md-6">
          <h2 style="margin-top:5%; text-align:center; color:white; text-shadow:3px 3px 3px #1b1978">OVERFLOWING LIFE MINISTRY INTERNATIONAL</h2>
          <h2 style="margin-top:5%; text-align:center; color:white">Member Registration</h2>
       </div>
          <div class="col-md-3">
      </div>
                   
          </div>

      <div class="row">
          <div class="col-md-6">

              <div style="text-align:center; vertical-align:middle; margin-top:40%">
                  <p><img src="img/overflow.png" alt="" ></p>
              </div>​
              <div style="text-align:center; text-shadow:3px 3px 3px #1b1978; color: white; box-shadow: white 2px 2px 2px 2px"><h4><strong>I came that they may have life, and may have it abundantly.</strong></h4></div>
                       </div>

          

           <div class="col-md-6">
    <div class="card card-register mx-auto mt-5">
      <div class="card-header" style="font-family:'Arial Rounded MT'"><strong>Membership Form</strong></div>
      <div class="card-body">
        <form runat="server">
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
            <asp:TextBox class="form-control" runat="server" id="dob" type="text" aria-describedby="emailHelp"></asp:TextBox>
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
	                <asp:ListItem value ="choir">Choir</asp:ListItem>
	                <asp:ListItem value ="intercessors">Intercessors</asp:ListItem>
                   <asp:ListItem value ="technical">Technical</asp:ListItem>
	                <asp:ListItem value ="ushering">Ushering</asp:ListItem>
                </asp:DropDownList>
              </div>
                  </div>
            

          <asp:Button runat="server" text="Register" ID="Register" class="btn btn-primary btn-block" onClick="Register_Click"></asp:Button>
        </form>
        <div class="text-center">
          <a class="d-block small mt-3" href="login.html">Login Page</a>
          <a class="d-block small" href="forgot-password.html">Forgot Password?</a>
        </div>
      </div>
    </div>
  </div>
          </div>
      </div>
  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
</body>

</html>
