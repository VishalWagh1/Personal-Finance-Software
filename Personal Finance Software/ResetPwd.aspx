<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ResetPwd.aspx.cs" Inherits="Personal_Finance_Software.ResetPwd" %>

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
            <asp:Button runat="server" ID="btnLogIn" Text="Log In" OnClick="btnLogIn_Click" CssClass="btn btn-lg mr-3 " style="background-color: #e3f2fd;" />
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-md-6 my-3">
                    <h2 class="mb-3">Reset Password</h2>
                    <div class="form-group form-floating">
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Enter Your Email" TextMode="Email"></asp:TextBox>
                        <lable for="txtEmail">Email</lable>
                    </div>
                    <div class="form-group form-floating">
                        <asp:TextBox runat="server" ID="txtNewPwd" CssClass="form-control" placeholder="Enter New Password" TextMode="Password"></asp:TextBox>
                        <label for="txtNewPwd">New Password</label>
                    </div>
                    <div class="form-group form-floating">
                        <asp:TextBox runat="server" ID="txtConf" CssClass="form-control"  placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                        <label for="txtConf">Confirm Password</label>
                    </div>
                    <asp:Button runat="server" ID="btnSumbmit" CssClass="btn float-right" OnClick="btnSumbmit_Click" style="background-color: #e3f2fd; height:45px; font-size:20px;" Text="Reset Password" />
                    
                </div>
            </div>
            <div class="row">
                <asp:RequiredFieldValidator runat="server" ID="rfv4" ErrorMessage="Please Enter Password" ControlToValidate="txtNewPwd" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cv1" runat="server" ErrorMessage="Password is not matching" ForeColor="red" ControlToValidate="txtNewPwd" ControlToCompare="txtConf"></asp:CompareValidator>
            </div>
            
        </div>
    </form>
</body>
</html>
