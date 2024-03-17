<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Personal_Finance_Software.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <div class="row ">                
        <div class="col-md-11 col-lg-11 m-auto" >
            <p class="col-lg-9 col-md-9 mb-5 pb-3 fw-bolder fs-1" style="margin-left:22rem; margin-top: 7rem;">Personal Finance Software</p>
            
            <div class=" d-flex justify-content-center pt-3">
                <asp:Button runat="server" CssClass="btn btn-info mr-5 w-25" ID="btnIncome" OnClick="btnIncome_Click"  Text="Income" />
                <asp:Button runat="server" CssClass="btn btn-info mr-5 w-25" ID="btnExenses" OnClick="btnExenses_Click" Text="Expenses" />
                <asp:Button runat="server" CssClass="btn btn-info w-25" ID="btnInvestments" OnClick="btnInvestments_Click" Text="Investments" />
            </div>
        </div>
    </div>
    <div class="row " style="margin-left:14rem;">
        <p class="col-lg-10 col-md-10  mt-5 mx-auto pt-4 ">Your money deserves more than a checkbook. Experience the Personal Finance Software difference.</p>
        <p class="col-lg-6 col-md-6 mx-auto "> it's personal finance, reimagined.</p>

    </div>
</div>
</asp:Content>
