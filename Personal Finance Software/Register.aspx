<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Personal_Finance_Software.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Finance Software</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />

</head>
<body>
    <form id="form1" runat="server">
         <nav class="navbar navbar-expand-md navbar-light  py-3 ml-auto" style="background-color: #e3f2fd;">
             <h1 class=" ml-4 text-dark navbar-branad">Personal Finance Software</h1>
             <a class="btn  ml-auto mr-4 btn-lg" href="LogIn.aspx" role="button" style="background-color: #e3f2fd;">Log In</a>
          </nav>
        <div class="container h-100">
            <div class="row">
                <%--<div class="col-md-5 col-lg-5 m-auto">
                    <p class="mt-5   ml-4 fw-bolder fs-1">Personal Finance Software</p>
                </div>--%>
            </div>
            <div class="row">
                <div class="col-md-6 col-lg-6 m-auto pl-5">
                    <h2 class="mt-4 mb-3">Register</h2>
                    <div class="form-row ">
                        <div class="form-group  col-md">
                            <label for="firstname">First Name: </label>
                            <asp:TextBox runat="server" ID="txtFname" Class="form-control" placeholder="Enter First Name"></asp:TextBox>
                        </div>
                        <div class="form-group col-md">
                            <label for="lastname">Last Name: </label>
                            <asp:TextBox runat="server" ID="txtLname" Class="form-control" placeholder="Enter Last Name"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="email">Email: </label>
                        <asp:TextBox runat="server" ID="txtEmail" CssClass="form-control" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="contact">Contact: </label>
                        <asp:TextBox runat="server" ID="txtContact" CssClass="form-control" placeholder="Enter Contact" TextMode="Number"></asp:TextBox>
                    </div>
                    <div class="form-group  dropdown ">
                        <label for="ddlOcc" class="w-25 ">Occupation: </label>
                        <asp:DropDownList runat="server" ID="ddlOcc" CssClass="btn btn-outline-secondary dropdown-toggle  px-4" >
                            <asp:ListItem Text="--Select--" Value="Select"></asp:ListItem>
                            <asp:ListItem Text="Studying" Value="Studying"></asp:ListItem>
                            <asp:ListItem Text="Employed" Value="Service"></asp:ListItem>
                            <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group">
                        <label for="pwd">Password: </label>
                        <asp:TextBox runat="server" ID="txtpwd" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="conpwd">Confirm Password: </label>
                        <asp:TextBox runat="server" ID="conpwd" CssClass="form-control" placeholder="Confirm Password" TextMode="Password"></asp:TextBox>
                    </div>

                    <asp:Button runat="server" ID="btnSubmit" Text="Register" OnClick="btnSubmit_Click" CssClass="btn  w-25 mt-3" style="background-color: #e3f2fd;" />
                </div>
            </div>
            <div class="row  pt-3" >
                <div class="col-md-8 col-lg-8 m-auto " style="margin-left:13rem">
                    <asp:RequiredFieldValidator runat="server" ID="rfv1" ErrorMessage="Please Enter First Name" ControlToValidate="txtFname" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator runat="server" ID="rfv2" ErrorMessage="Please Enter Last Name" ControlToValidate="txtLname" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator runat="server" ID="rfv3" ErrorMessage="Please Enter Email Id" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator runat="server" ID="rfv4" ErrorMessage="Please Enter Password" ControlToValidate="txtpwd" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RequiredFieldValidator runat="server" ID="rfv5" ErrorMessage="Please Enter Contact" ControlToValidate="txtContact" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator runat="server" ID="rev1" ErrorMessage="Please Enter Valid Email Id" ControlToValidate="txtEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="cv1" runat="server" ErrorMessage="Password is not matching" ForeColor="red" ControlToValidate="txtpwd" ControlToCompare="conpwd"></asp:CompareValidator>
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
