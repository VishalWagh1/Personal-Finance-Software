<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Investments.aspx.cs" Inherits="Personal_Finance_Software.Investments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mb-4 ">
            <div class="d-flex ">
                <div class="my-3 h2">Investment</div>
                <div class="ml-auto mr-5 mt-4">
                    <label for="lblTotal">Total Investment: </label>
                    <asp:Label runat="server" ID="lblTotal" CssClass="h3"></asp:Label>
                </div>
            </div>
        </div>
        <div class="d-flex">
            <h4>Add Investment</h4>
            <asp:Button runat="server" ID="btnRpt" CssClass="btn btn-info btn-md ml-auto mr-4" OnClick="btnRpt_Click" Text="Report"/>
        </div>
         
        <div class="row">
            <table class="table table-striped mt-4">
                <tr>
                    <td class="w-25 form-floating">
                        <asp:TextBox runat="server" ID="txtInvest" CssClass="form-control h-25" placeholder="Add Investment"></asp:TextBox>
                        <label for="txtInvest" class="ml-2">Investment</label>
                    </td>
                    <td class="w-25 form-floating">
                        <asp:TextBox runat="server" ID="txtAmt" CssClass="form-control h-25" placeholder="Add Amount"></asp:TextBox>
                        <label for="txtAmt" class="ml-2">Amounts</label>
                    </td>
                    <td class=" form-floating">
                        <asp:TextBox runat="server" ID="txtDesc" CssClass="form-control h-25" placeholder="Add Description" Style="width: 500px;"></asp:TextBox>
                        <label for="txtDesc" class="ml-2">Description</label>
                    </td>
                    <td>
                        <asp:Button runat="server" ID="btnAdd" CssClass="btn btn-info btn-md w-100 mr-5 mt-2" OnClick="btnAdd_Click" Text="Add"  />
                    </td>
                </tr>
            </table>
        </div>
        <div class="row">
            <asp:GridView runat="server" ID="gvInvest" DataKeyNames="Id" AutoGenerateColumns="false" OnRowEditing="gvInvest_RowEditing" OnRowCancelingEdit="gvInvest_RowCancelingEdit" OnRowUpdating="gvInvest_RowUpdating" OnRowDeleting="gvInvest_RowDeleting" CssClass="table table-striped px-5">
                <Columns>
                    <asp:TemplateField HeaderText="Investment">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblInvest" Text='<%# Eval("Investments") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txteInvest" Text='<%# Eval("Investments") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblAmt" Text='<%# Eval("AmtInvested") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txteAmt" Text='<%# Eval("AmtInvested") %>'></asp:TextBox>
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
                    <asp:CommandField ButtonType="link" ShowEditButton="true" ShowDeleteButton="true" ItemStyle-Width="130" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
