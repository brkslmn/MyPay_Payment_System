<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddPayment.aspx.cs" Inherits="Proje.Web.AddPayment" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Establishment" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Payments" runat="server">
     <br />
    <h2>Add New Payments</h2>
    <br />
    <form id="newEst" class="form-group" method="post">
        <div>

            <asp:Label ID="Label0" runat="server" Text="Establishment Name"></asp:Label>
            <asp:TextBox ID="txtEstName" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Customer Number"></asp:Label>
            <asp:TextBox ID="txtNumber" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="User Balance"></asp:Label>
            <asp:TextBox ID="txtBalance" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Payment Amount"></asp:Label>
            <asp:Textbox ID="txtPayment" Width="50%" runat="server" class="form-control"></asp:Textbox>
            <br />
            <asp:Button ID="btnpayments" runat="server" Text="Kaydet" class="btn btn-info " OnClick="addpay_Click" />

        </div>
    </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Dashboard" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Debit_Cards" runat="server">
</asp:Content>
