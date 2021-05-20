<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Establishment.aspx.cs" Inherits="Proje.Web.Establishment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Establishment</title>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Establishment" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="clearfix">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
                <div class="col-md-12">
                    <div style="overflow: visible;" class="table-responsive">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:MyPayConnectionString %>' SelectCommand="SELECT * FROM [establishment]" DeleteCommand="DELETE FROM [establishment] WHERE [est_id] = @est_id" InsertCommand="INSERT INTO [establishment] ([est_id], [est_name], [phone_number], [adress], [website]) VALUES (@est_id, @est_name, @phone_number, @adress, @website)" UpdateCommand="UPDATE [establishment] SET [est_name] = @est_name, [phone_number] = @phone_number, [adress] = @adress, [website] = @website WHERE [est_id] = @est_id">
                            <DeleteParameters>
                                <asp:Parameter Name="est_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="est_id" Type="Int32" />
                                <asp:Parameter Name="est_name" Type="String" />
                                <asp:Parameter Name="phone_number" Type="String" />
                                <asp:Parameter Name="adress" Type="String" />
                                <asp:Parameter Name="website" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="est_name" Type="String" />
                                <asp:Parameter Name="phone_number" Type="String" />
                                <asp:Parameter Name="adress" Type="String" />
                                <asp:Parameter Name="website" Type="String" />
                                <asp:Parameter Name="est_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" width="100%" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="est_id">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="est_id" HeaderText="est_id" ReadOnly="True" SortExpression="est_id" />
                                <asp:BoundField DataField="est_name" HeaderText="est_name" SortExpression="est_name" />
                                <asp:BoundField DataField="phone_number" HeaderText="phone_number" SortExpression="phone_number" />
                                <asp:BoundField DataField="adress" HeaderText="adress" SortExpression="adress" />
                                <asp:BoundField DataField="website" HeaderText="website" SortExpression="website" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                    </div>
                </div>
    </div>
   
</asp:Content>
