<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ChurchDB.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>Overflowing Life Ministries-Admin</title>
  <!-- Bootstrap core CSS-->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!-- Custom fonts for this template-->
  <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
</head>



    <body class="bg-dark" style="background-image:url(img/login3.jpg);">
  <div class="container">
      <div class="row">
      <div class="col-md-2">
      </div><div class="col-md-8">
          <h2 style="margin-top:3%; text-align:center; color:white; text-shadow:3px 3px 3px #1b1978">OVERFLOWING LIFE MINISTRY INTERNATIONAL</h2>
          <h3 style="margin-top:2%; text-align:center; color:white">User Login</h3>

           <div style="text-align:center; vertical-align:middle; margin-top:2%">
                  <p><img src="img/overflow.png" alt="" ></p>
              </div>​             
       </div>
          <div class="col-md-2">
      </div>
                   
          </div>

      <div class="row">
          <div class="col-md-3">

             
                       </div>

          

           <div class="col-md-6">
    <div class="card card-register mx-auto mt-2">
      <div class="card-header" style="font-family:'Arial Rounded MT'"><strong>Login</strong></div>
      <div class="card-body">
        <form runat="server">
          <div class="form-group">
            <label for="exampleInputEmail1">user</label>
            <asp:TextBox class="form-control" id="username" runat="server" type="username" aria-describedby="emailHelp" placeholder="Enter username"></asp:TextBox>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">password</label>
            <asp:TextBox runat="server" class="form-control" id="password" type="password" placeholder="Password"></asp:TextBox>
          </div>
          <div class="form-group">
            
          </div>
          <asp:Button runat="server" ID="LoginBtn" OnClick="Login_Click" class="btn btn-primary btn-block" Text="Login"></asp:Button>
        </form>
        
      </div>
    </div>
 <div style="text-align:center; margin-top:1%; text-shadow:3px 3px 3px #1b1978; color: white; box-shadow: white 2px 2px 2px 2px"><h4><strong>I came that they may have life, and may have it abundantly.</strong></h4></div>
   <div id=msgDiv runat="server" class="text-center" style="background-color:white; border-radius:1px 1px; text-align:center;" >
          <div id="wrongLogin" runat="server"><h5 style="color:red">wrong username/password combination</h5></div><br/>
          <div id="emptyLogin" runat="server"><h5 style="color:red">username/password cannot be empty</h5></div>
              </div>
           </div>
         
           <div class="col-md-3">
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
