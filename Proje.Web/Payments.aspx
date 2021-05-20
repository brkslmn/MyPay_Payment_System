<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Payments.aspx.cs" Inherits="Proje.Web.Payments" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Payments</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Payments" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="clearfix">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
                <div class="col-md-12">
                    <div style="overflow: visible;" class="table-responsive">
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyPayConnectionString %>" DeleteCommand="DELETE FROM [payments] WHERE [portfolio_id] = @portfolio_id" InsertCommand="INSERT INTO [payments] ([portfolio_id], [establishment_id], [establishment_name], [customer_number], [user_balance], [payment_amount]) VALUES (@portfolio_id, @establishment_id, @establishment_name, @customer_number, @user_balance, @payment_amount)" SelectCommand="SELECT * FROM [payments]" UpdateCommand="UPDATE [payments] SET [establishment_id] = @establishment_id, [establishment_name] = @establishment_name, [customer_number] = @customer_number, [user_balance] = @user_balance, [payment_amount] = @payment_amount WHERE [portfolio_id] = @portfolio_id">
                            <DeleteParameters>
                                <asp:Parameter Name="portfolio_id" Type="Int32" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="portfolio_id" Type="Int32" />
                                <asp:Parameter Name="establishment_id" Type="Int32" />
                                <asp:Parameter Name="establishment_name" Type="String" />
                                <asp:Parameter Name="customer_number" Type="Int32" />
                                <asp:Parameter Name="user_balance" Type="Double" />
                                <asp:Parameter Name="payment_amount" Type="Double" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="establishment_id" Type="Int32" />
                                <asp:Parameter Name="establishment_name" Type="String" />
                                <asp:Parameter Name="customer_number" Type="Int32" />
                                <asp:Parameter Name="user_balance" Type="Double" />
                                <asp:Parameter Name="payment_amount" Type="Double" />
                                <asp:Parameter Name="portfolio_id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" Width="100%" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" DataKeyNames="portfolio_id">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                <asp:TemplateField HeaderText="portfolio_id" SortExpression="portfolio_id">
                                    <EditItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("portfolio_id") %>'></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("portfolio_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="establishment_id" SortExpression="establishment_id">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("establishment_id") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("establishment_id") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="establishment_name" SortExpression="Establishment Name">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("establishment_name") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("establishment_name") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="customer_number" SortExpression="Customer Number">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("customer_number") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("customer_number") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="user_balance" SortExpression="User_Balance">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("user_balance") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label5" runat="server" Text='<%# Bind("user_balance") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="payment_amount" SortExpression="Payment_Amount">
                                    <EditItemTemplate>
                                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("payment_amount") %>'></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label ID="Label6" runat="server" Text='<%# Bind("payment_amount") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
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

