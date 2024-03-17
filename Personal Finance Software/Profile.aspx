<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Personal_Finance_Software.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container h-100">
        <div class="row">
            <div class="col-md-6 col-lg-6 m-auto pl-5">
                <h2 class="mt-5 mb-4">Profile</h2>
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
                    <asp:DropDownList runat="server" ID="ddlOcc" CssClass="btn  dropdown-toggle  px-4">
                        <asp:ListItem Text="--Select--" Value="Select"></asp:ListItem>
                        <asp:ListItem Text="Studying" Value="Studying"></asp:ListItem>
                        <asp:ListItem Text="Employed" Value="Service"></asp:ListItem>
                        <asp:ListItem Text="Business" Value="Business"></asp:ListItem>
                    </asp:DropDownList>
                </div>
                

                <asp:Button runat="server" ID="btnUpdate" Text="Update" OnClick="btnUpdate_Click" CssClass="btn  w-25 mt-3" Style="background-color: #e3f2fd;" />
            </div>
        </div>
    </div>
</asp:Content>
