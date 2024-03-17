<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainPage.aspx.cs" Inherits="Personal_Finance_Software.MainPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Personal Finance Software</title>
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous" />
    
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row ">                
                <div class="col-md-5 col-lg-5 m-auto">
                    <p class="my-5 py-5  ml-4 fw-bolder fs-1">Personal Finance Software</p>
                    
                    <div class=" d-flex justify-content-center ">
                        <asp:Button runat="server" CssClass="btn btn-info mr-5 w-25" ID="btnRegist" OnClick="btnRegist_Click" Text="Registration" />
                        <asp:Button runat="server" CssClass="btn btn-info w-25" ID="btnLogIn" OnClick="btnLogIn_Click" Text=" Log In " />
                    </div>
                </div>
            </div>
            <div class="row">
                <p class="col-lg-8 col-md-8 m-auto my-5 py-4 px-4">Stressed about bills? Juggling budgets? Personal Finance Software simplifies personal finance, one step at a time.</p>
            </div>
        </div>
    </form>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
