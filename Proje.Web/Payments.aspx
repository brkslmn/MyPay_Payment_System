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
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:MyPayConnectionString %>' DeleteCommand="DELETE FROM [payments] WHERE [portfolio_id] = @portfolio_id" InsertCommand="INSERT INTO [payments] ([portfolio_id], [establishment_id], [establishment_name], [customer_number], [user_balance], [payment_amount]) VALUES (@portfolio_id, @establishment_id, @establishment_name, @customer_number, @user_balance, @payment_amount)" SelectCommand="SELECT * FROM [payments]" UpdateCommand="UPDATE [payments] SET [establishment_id] = @establishment_id, [establishment_name] = @establishment_name, [customer_number] = @customer_number, [user_balance] = @user_balance, [payment_amount] = @payment_amount WHERE [portfolio_id] = @portfolio_id">
                            <DeleteParameters>
                                <asp:Parameter Name="portfolio_id" Type="Int32"></asp:Parameter>
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="portfolio_id" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="establishment_id" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="establishment_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="customer_number" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="user_balance" Type="Double"></asp:Parameter>
                                <asp:Parameter Name="payment_amount" Type="Double"></asp:Parameter>
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="establishment_id" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="establishment_name" Type="String"></asp:Parameter>
                                <asp:Parameter Name="customer_number" Type="Int32"></asp:Parameter>
                                <asp:Parameter Name="user_balance" Type="Double"></asp:Parameter>
                                <asp:Parameter Name="payment_amount" Type="Double"></asp:Parameter>
                                <asp:Parameter Name="portfolio_id" Type="Int32"></asp:Parameter>
                            </UpdateParameters>
                        </asp:SqlDataSource>
                        <asp:GridView ID="GridView1" runat="server" width="100%" AutoGenerateColumns="False" DataKeyNames="portfolio_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                            <Columns>
                                <asp:TemplateField>
                                    <EditItemTemplate>
                                        <asp:Button runat="server" class ="btn btn-info" Text="Update" CommandName="Update" CausesValidation="True" ID="LinkButton3"></asp:Button>
                                        &nbsp;<asp:LinkButton runat="server" class ="btn btn-warning"  Text="Cancel" CommandName="Cancel" CausesValidation="False" ID="LinkButton4"></asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Button runat="server" Text="Edit" class ="btn btn-secondary" CommandName="Edit" CausesValidation="False" ID="LinkButton3"></asp:Button>
                                        &nbsp;<asp:LinkButton runat="server" class ="btn btn-danger" Text="Delete" CommandName="Delete" CausesValidation="False" ID="LinkButton4"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                
                                <asp:TemplateField HeaderText="Portfolio id" SortExpression="portfolio_id">
                                    <EditItemTemplate>
                                        <asp:Label runat="server" Text='<%# Eval("portfolio_id") %>' ID="Label1"></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("portfolio_id") %>' ID="Label1"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Establishment id" SortExpression="establishment_id">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("establishment_id") %>' ID="TextBox1"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("establishment_id") %>' ID="Label2"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Establishment Name" SortExpression="establishment_name">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("establishment_name") %>' ID="TextBox2"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("establishment_name") %>' ID="Label3"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Customer Number" SortExpression="customer_number">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("customer_number") %>' ID="TextBox3"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("customer_number") %>' ID="Label4"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="User Balance" SortExpression="user_balance">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("user_balance") %>' ID="TextBox4"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("user_balance") %>' ID="Label5"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Payment Amount" SortExpression="payment_amount">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("payment_amount") %>' ID="TextBox5"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("payment_amount") %>' ID="Label6"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                

                            </Columns>
                            <EditRowStyle BackColor="#999999"></EditRowStyle>

                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

                            <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

                            <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

                            <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

                            <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

                            <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
                        </asp:GridView>
                    </div>
                    <br />
                    <div style="padding-left: 15px;">
                        <asp:Button ID="new_pay" runat="server" Text="Add Payment" class="btn btn-success" OnClick="new_pay_Click" />
                    </div>
                    <hr />
                    <div class="row">
                <div class="col-12">
                    <div class="card mb-3 mb-md-4">
                        <div class="card-header">
                            <h5 class="font-weight-semi-bold mb-0">Recent Orders</h5>
                        </div>

                        <div class="card-body pt-0">
                            <div class="table-responsive-xl">
                                <table class="table text-nowrap mb-0">
                                    <thead>
                                    <tr>
                                        <th class="font-weight-semi-bold border-top-0 py-2">#</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">Customer Number</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">Establishment Phone</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">Payment Amount</th>
                                        <th class="font-weight-semi-bold border-top-0 py-2">Status</th>
                                    </tr>
                                    </thead>
                                    <tbody>
         
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </div>     
</asp:Content>

