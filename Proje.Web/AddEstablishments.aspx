<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AddEstablishments.aspx.cs" Inherits="Proje.Web.AddEstablishments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Establishment" runat="server">
    <br />
    <h2>Add New Establishment</h2>
    <br />
    <form id="newEst" class="form-group" method="post">
        <div>

            <asp:Label ID="lblEstablishment" runat="server" Text="Establishment Name"></asp:Label>
            <asp:TextBox ID="txtEstName" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Establishment Phone Number"></asp:Label>
            <asp:TextBox ID="txtPhone" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Establishment Adress"></asp:Label>
            <asp:TextBox ID="txtAdress" Width="50%" runat="server" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Establishment Website"></asp:Label>
            <asp:Textbox ID="txtWebsite" Width="50%" runat="server" class="form-control"></asp:Textbox>
            <br />
            <asp:Button ID="btnestablishment" runat="server" Text="Kaydet" class="btn btn-info " OnClick="addest_Click" />

        </div>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Payments" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Dashboard" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="Debit_Cards" runat="server">
</asp:Content>

