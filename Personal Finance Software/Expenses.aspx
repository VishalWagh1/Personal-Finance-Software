<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Expenses.aspx.cs" Inherits="Personal_Finance_Software.Expenses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row mb-4">
            <div class="d-flex ">
                <div class="my-3 h2">Expenses</div>
                <div class="ml-auto mr-5 mt-4 ">
                    <label for="lblTotal">Total Expence: </label>
                    <asp:Label runat="server" ID="lblTotal" CssClass="h4  "></asp:Label>
                </div>
            </div>
            <div class="d-flex my-2">
                <h4>Add Expences</h4>
                <asp:Button runat="server" ID="GetReport" CssClass="btn btn-info btn-md  ml-auto" OnClick="GetReport_Click" Text="Report" />
            </div>
            <div class="col-md-9 m-auto">
                <table class="table ">
                    <tr>
                        <%--<td class=" ">
                            <asp:TextBox runat="server" ID="txtYr" CssClass="form-control h-25" placeholder="Year"></asp:TextBox>
                            <label for="txtDt" class="ml-2">Date</label>
                            <asp:TextBox runat="server" TextMode="Date" ID="txtDate" CssClass="form-control h-25"></asp:TextBox>

                        </td>--%>
                        <td class=" w-25">
                            <label for="txtExp" class="ml-2">Expense</label>
                            <asp:DropDownList runat="server" ID="ddlExp" CssClass="form-control h-25">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Rent</asp:ListItem>
                                <asp:ListItem>Food</asp:ListItem>
                                <asp:ListItem>Mobile</asp:ListItem>
                                <asp:ListItem>Cloth</asp:ListItem>
                                <asp:ListItem>Transport</asp:ListItem>
                                <asp:ListItem>Other</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td class=" w-25">
                            <label for="txtAmt" class="ml-2">Amount</label>
                            <asp:TextBox runat="server" ID="txtAmt" CssClass="form-control h-25" placeholder="Amount"></asp:TextBox>

                        </td>
                        <td class="">
                            <asp:Button runat="server" ID="btnAdd" CssClass="btn btn-info w-25 float-right mt-3" OnClick="btnAdd_Click" Text="Add"  />
                        </td>
                    </tr>
                </table>
            </div>
        </div>

        <div class="row">
            <asp:GridView runat="server" ID="gvExp" DataKeyNames="srno" AutoGenerateColumns="false" OnRowDeleting="gvExp_RowDeleting" CssClass="table table-striped px-5">
                <Columns>
                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblExp" Text='<%# Eval("Date") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txteExp" Text='<%# Eval("Date") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Month">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblExp" Text='<%# Eval("Expense") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox runat="server" ID="txteExp" Text='<%# Eval("Expense") %>'></asp:TextBox>
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

                    <asp:CommandField ButtonType="link" ShowDeleteButton="true" />
                </Columns>
            </asp:GridView>
        </div>
    </div>


</asp:Content>
