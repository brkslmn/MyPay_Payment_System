<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Debit_Cards.aspx.cs" Inherits="Proje.Web.Debit_Cards" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Payments</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Debit_Cards" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div class="clearfix">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server"></asp:UpdatePanel>
        <div class="col-md-12">
            <div style="overflow: visible;" class="table-responsive">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MyPayConnectionString %>" DeleteCommand="DELETE FROM [user_debit_cards] WHERE [card_id] = @card_id" InsertCommand="INSERT INTO [user_debit_cards] ([card_id], [card_number]) VALUES (@card_id, @card_number)" SelectCommand="SELECT * FROM [user_debit_cards]" UpdateCommand="UPDATE [user_debit_cards] SET [card_number] = @card_number WHERE [card_id] = @card_id">
                    <DeleteParameters>
                        <asp:Parameter Name="card_id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="card_id" Type="Int32" />
                        <asp:Parameter Name="card_number" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="card_number" Type="Int32" />
                        <asp:Parameter Name="card_id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
                <asp:GridView ID="GridView1" runat="server"  width="50%" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="card_id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <EditItemTemplate>
                                <asp:Button runat="server" Text="Update" class ="btn btn-info" CommandName="Update" CausesValidation="True" ID="LinkButton1"></asp:Button>
                                &nbsp;<asp:Button runat="server" Text="Cancel" class ="btn btn-warning" CommandName="Cancel" CausesValidation="False" ID="LinkButton2"></asp:Button>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button runat="server" Text="Edit" class ="btn btn-secondary" CommandName="Edit" CausesValidation="False" ID="LinkButton1"></asp:Button>
                                &nbsp;<asp:Button runat="server" Text="Delete" class ="btn btn-danger" CommandName="Delete" CausesValidation="False" ID="LinkButton2"></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Card id" SortExpression="Card id">
                            <EditItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("card_id") %>'></asp:Label>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("card_id") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Card Number" SortExpression="Card Number">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("card_number") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label2" runat="server" Text='<%# Bind("card_number") %>'></asp:Label>
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
            <br />
            <div style="padding-left: 15px;">
                 <asp:Button ID="newCard" runat="server" Text="Add New Card" class="btn btn-success" OnClick="newCard_Click" />
             </div>
     </div>       
    </div>
</asp:Content>


