<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="SourceReport.aspx.cs" Inherits="Personal_Finance_Software.SourceReport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-9 m-auto">
                <div class="h2 my-3">Get Source</div>
            </div>
            <div class="row">
                <div class="col-md-9 m-auto mt-3">
                    <table class="table">
                        <tr>
                            <td>
                                <label for="">From Date</label>
                                <asp:TextBox runat="server" TextMode="Date" ID="txtFromDate" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <label for="">To Date</label>
                                <asp:TextBox runat="server" TextMode="Date" ID="txtToDate" CssClass="form-control"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Button runat="server" ID="btnRpt" CssClass="btn btn-info mt-3 float-right" OnClick="btnRpt_Click" Style="background-color: #e3f2fd;" Text="Get Sources" />
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="row">
                <asp:GridView runat="server" ID="gvSrc" DataKeyNames="srno" AutoGenerateColumns="false" CssClass="table table-striped">
                    <Columns>
                        <asp:TemplateField HeaderText="Date">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblDt" Text='<%# Eval("AddedDt") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Source">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblSrc" Text='<%# Eval("Source") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Amount">
                            <ItemTemplate>
                                <asp:Label runat="server" ID="lblAmt" Text='<%#Eval("Amount") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
