<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ExpenseReport.aspx.cs" Inherits="Personal_Finance_Software.ExpenseReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 m-auto ">
                <div class="h2 my-4">Get Expences</div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-9 col-lg-9 m-auto mt-3">
                <table class="table">
                    <tr>
                        <td class="w-25 ">
                            <label for="txtFromDate" class="ml-2">From Date</label>
                            <asp:TextBox runat="server" TextMode="Date" ID="txtFromDate" CssClass="form-control h-25"></asp:TextBox>
                        </td>
                        <td class="w-25">
                            <label for="txtToDate" class="ml-2">To Date</label>
                            <asp:TextBox runat="server" TextMode="Date" ID="txtToDate" CssClass="form-control h-25"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button runat="server" ID="btnRpt" CssClass="btn btn-info mt-3 w-25 float-right"  Text="Get Expences" OnClick="btnRpt_Click" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <asp:GridView runat="server" ID="gvExp" DataKeyNames="srno" AutoGenerateColumns="false" CssClass="table table-striped px-5">
                <Columns>
                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblDt" Text='<%# Eval("Date") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Expense">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblExp" Text='<%# Eval("Expense") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblAmt" Text='<%# Eval("Amount") %>'></asp:Label>
                        </ItemTemplate>
                        
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
