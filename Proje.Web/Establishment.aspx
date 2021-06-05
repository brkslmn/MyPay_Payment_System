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
                        <asp:GridView ID="GridView1" runat="server" Width="100%" AutoGenerateColumns="False" DataKeyNames="est_id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
                            <Columns>
                                <asp:TemplateField ShowHeader="False">
                                    <EditItemTemplate>
                                        <asp:LinkButton runat="server" Text="Update" class ="btn btn-info" CommandName="Update" CausesValidation="True" ID="LinkButton3"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton runat="server" Text="Cancel" class ="btn btn-warning"  CommandName="Cancel" CausesValidation="False" ID="LinkButton4"></asp:LinkButton>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:LinkButton runat="server" Text="Edit" class ="btn btn-secondary" CommandName="Edit" CausesValidation="False" ID="LinkButton3"></asp:LinkButton>
                                        &nbsp;<asp:LinkButton runat="server" Text="Delete" class ="btn btn-danger" CommandName="Delete" CausesValidation="False" ID="LinkButton4"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Establishment id" SortExpression="est_id">
                                    <EditItemTemplate>
                                        <asp:Label runat="server" Text='<%# Eval("est_id") %>' ID="Label1"></asp:Label>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("est_id") %>' ID="Label1"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Establishment Name" SortExpression="est_name">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("est_name") %>' ID="TextBox1"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("est_name") %>' ID="Label2"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Phone Number" SortExpression="phone_number">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("phone_number") %>' ID="TextBox2"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("phone_number") %>' ID="Label3"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Adress" SortExpression="adress">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("adress") %>' ID="TextBox3"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("adress") %>' ID="Label4"></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Website" SortExpression="website">
                                    <EditItemTemplate>
                                        <asp:TextBox runat="server" Text='<%# Bind("website") %>' ID="TextBox4"></asp:TextBox>
                                    </EditItemTemplate>
                                    <ItemTemplate>
                                        <asp:Label runat="server" Text='<%# Bind("website") %>' ID="Label5"></asp:Label>
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
                        <asp:Button ID="new_est" runat="server" Text="AddEstablishment" class="btn btn-success" OnClick="new_est_Click" />
                    </div>
                </div>
    </div>
   
</asp:Content>

