<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddDebitCards.aspx.cs" Inherits="Proje.Web.AddDebitCards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Establishment" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Payments" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Dashboard" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Debit_Cards" runat="server">
    <br />
    <h2>Add New Debit Card</h2>
    <br />
    <form id="newCard" class="form-group" method="post">
        <div>

            <asp:Label ID="lblDebitCard" runat="server" Text="Card Number"></asp:Label>
            <asp:TextBox ID="txtCardNumber" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="btnCard" runat="server" Text="Kaydet" class="btn btn-info " OnClick="btnCard_Click" />

        </div>
    </form>
</asp:Content>
