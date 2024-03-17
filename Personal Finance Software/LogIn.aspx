<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LogIn.aspx.cs" Inherits="Personal_Finance_Software.Log_In" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Finance Software</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    
</head>
<body>
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-md   py-3 ml-auto mb-5" style="background-color: #e3f2fd;">
            <h1 class=" ml-4  navbar-branad">Personal Finance Software</h1>
            <asp:Button runat="server" ID="btnRegister" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-lg ml-auto mr-4" style="background-color: #e3f2fd;" />
        </nav> 

        <div class="container">
           <%-- <div class="row">
                <div class="col-md-5 col-lg-5 m-auto">
                    <p class="my-5 pt-5  ml-4 fw-bolder fs-1">Personal Finance Software</p>
                </div>
            </div>--%>
             <div class="row">
     <div class="col-md-6 col-lg-6 m-auto pl-5 ">
         <h1 class="mt-3 mb-5 ">Log In</h1>
         
         <div class="form-group form-floating">
             <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control"  placeholder="Enter Email" TextMode="Email"></asp:TextBox>
             <label for="txtEmail">Email: </label>
         </div>
         
         <div class="form-group form-floating">
             <asp:TextBox runat="server" ID="txtpwd" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
             <label for="txtpwd">Password: </label>
         </div>
         
         <asp:Button runat="server" ID="btnLogIn" Text="Log In" OnClick="btnLogIn_Click" CssClass="btn w-25 my-4" style="background-color: #e3f2fd; height:45px; font-size:20px;" />
         <asp:Button runat="server" ID="btnRPdw" Text="Forgot Password?" OnClick="btnRPdw_Click1" CssClass="btn btn-link float-right mt-4" ></asp:Button>
     </div>
 </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
