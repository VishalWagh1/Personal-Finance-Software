<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Income.aspx.cs" Inherits="Personal_Finance_Software.Income" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mb-4">
            <div class="d-flex">
                <div class="my-3 h2">Income</div>
                <div class="mr-2 mt-4 ml-auto">
                    <label for="lblTotal">Total Amount: </label>
                    <asp:Label runat="server" ID="lblTotal" CssClass="h4  "></asp:Label>
                </div>
            </div>
        </div>
        <div class="d-flex my-2">
            <div class="h4">Add Income Sources</div>
            <asp:Button runat="server" ID="GetReport" CssClass="btn btn-info col-md-1 ml-auto" Text="Report" OnClick="GetReport_Click" />
        </div>
        <div class="row">
        <table class="table table-striped  mt-4">
            <tr>
                <td class="w-25 form-floating ">
                    <asp:TextBox runat="server" ID="txtSource" CssClass="form-control h-25" placeholder="Add Income Source"></asp:TextBox>
                    <label for="txtSource" class="ml-2">Income Source</label>
                </td>
                <td class="w-25 form-floating">
                    <asp:TextBox runat="server" ID="txtAmt" CssClass="form-control h-25" placeholder="Add Income Amount"></asp:TextBox>
                    <label for="txtAmt" class="ml-2">Income Amounts</label>
                </td>
                <td class=" form-floating">
                    <asp:TextBox runat="server" ID="txtDesc" CssClass="form-control h-25" placeholder="Add Description" Style="width: 500px;"></asp:TextBox>
                    <label for="txtDesc" class="ml-2">Description</label>
                </td>
                <td>
                    <asp:Button runat="server" ID="btnAdd" CssClass="btn btn-info btn-lg w-100 mr-5 mt-1" OnClick="btnAdd_Click" Text="Add" Style="background-color: #e3f2fd;" />
                </td>
            </tr>
        </table>
        </div>
        <div class="row">
            <asp:GridView runat="server" ID="gvSource" DataKeyNames="srno" AutoGenerateColumns="false" OnRowEditing="gvSource_RowEditing" OnRowCancelingEdit="gvSource_RowCancelingEdit" OnRowUpdating="gvSource_RowUpdating" OnRowDeleting="gvSource_RowDeleting" CssClass="table table-striped px-5">
                <Columns>
                    <asp:TemplateField HeaderText="Source">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblSource" Text='<%# Eval("Source") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txteSource" Text='<%# Eval("Source") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblAmt" Text='<%# Eval("Amount") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txteAmt" Text='<%# Eval("Amount") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Description">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblDsc" Text='<%# Eval("Description") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txteDesc" Text='<%# Eval("Description") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ButtonType="link" ShowDeleteButton="true" ShowEditButton="true" ItemStyle-Width="150" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
