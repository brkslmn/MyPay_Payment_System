<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Proje.Web.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Dashboard" runat="server">
    <div class="content">
        
        <div class="py-4 px-3 px-md-4">

            <div class="mb-3 mb-md-4 d-flex justify-content-between">
                <div class="h3 mb-0">Dashboard</div>
            </div>

            <div class="row">
                <div class="col-md-6 col-xl-4 mb-3 mb-md-4">
                    <!-- Card -->
                    <div class="card h-100">
                        <div class="card-header d-flex">
                            <h5 class="h6 font-weight-semi-bold text-uppercase mb-0">
                                <asp:Label ID="lblPortBalance" runat="server" Text="Label">
                                   
                                </asp:Label></h5>
                                
                        </div>
                        <div class="card-body p-0">
                            <div class="media align-items-center px-3 px-md-4 mb-3 mb-md-4">
                                <div class="media-body">
                                    <h4 class="h3 lh-1 mb-2"></h4>
                                    <p class="small text-muted mb-0">
                                        +$5,213.38 <span class="text-success mx-1">+10.23
                                            %</span> This Month
                                    </p>
                                </div>
                            </div>

                            <div class="js-area-chart chart--points-invisible chart--labels-hidden position-relative"
                            </div>

                            <div class="card h-100">
                            <div class="card-header d-flex">
                                <h5 class="h6 font-weight-semi-bold text-uppercase mb-0">Available Balance</h5>
                            </div>
                            <div class="card-body p-0">
                                <div class="border-bottom text-center p-3 p-md-4 pb-md-6">
                                    <div class="js-donut-chart position-relative d-flex mx-auto mb-3 mb-md-4" style="width: 130px; height: 130px;"
                                        data-series="[65,35]"
                                        data-border-width="12"
                                        data-slice-margin="2"
                                        data-start-angle="0"
                                        data-fill-colors='["#8069f2","#0cdcB9"]'
                                        data-is-show-tooltips="true"
                                        data-tooltip-currency="%"
                                        data-is-tooltip-currency-reverse="true"
                                        data-tooltip-custom-class="chart-tooltip chart-tooltip--triangle-right chart-tooltip--black small text-white px-2 py-1 mt-5 ml-n5"></div>

                                    <div class="small text-muted">Total Balance ≈ 32,754.56 USD</div>
                                </div>

                                <div class="border-bottom media align-items-center p-3">
                                    <div class="media-body d-flex align-items-center mr-2">
                                        <span>Cash</span>
                                        <span class="ml-auto">$13,380.25</span>
                                    </div>

                                    <i class="gd-arrow-up icon-text icon-text-xs d-flex text-success ml-auto"></i>
                                </div>

                                <div class="media align-items-center p-3">
                                    <div class="media-body d-flex align-items-center mr-2">
                                        <span>Bank Account</span>
                                        <span class="ml-auto">$19,432.80</span>
                                    </div>

                                    <i class="gd-arrow-up icon-text icon-text-xs d-flex text-success ml-auto"></i>
                            </div>
                        </div>
                    </div>
                        </div>
                    </div>
                    <!-- End Card -->
                </div>
            </div>
        </div>
    </div>
</asp:Content>