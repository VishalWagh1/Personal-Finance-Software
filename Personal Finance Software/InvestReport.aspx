<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="InvestReport.aspx.cs" Inherits="Personal_Finance_Software.InvestReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">

            <div class="h2 my-4 mx-5">Get Investments</div>
        </div>
        <div class="row">
            <div class="col-md-9 m-auto my-4">
                <table class="table">
                    <tr>
                        <td>
                            <label for="txtFromDt">From Date</label>
                            <asp:TextBox runat="server" ID="txtFromDt" TextMode="Date" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td>
                            <label for="txtToDt">To Date</label>
                            <asp:TextBox runat="server" ID="txtToDt" TextMode="Date" CssClass="form-control"></asp:TextBox>
                        </td>
                        <td>
                            <asp:Button runat="server" ID="btnInv" CssClass="btn btn-info my-3 float-right" OnClick="btnInv_Click"  Text="Get Investments" />
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="row">
            <asp:GridView runat="server" ID="gvInv" DataKeyNames="Id" AutoGenerateColumns="false" CssClass="table table-striped">
                <Columns>
                    <asp:TemplateField HeaderText="Date">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblDt" Text='<%# Eval("DateInvested") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Investments">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblInv" Text='<%# Eval("Investments") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Amount">
                        <ItemTemplate>
                            <asp:Label runat="server" ID="lblAmt" Text='<%# Eval("AmtInvested") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
