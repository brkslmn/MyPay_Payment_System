﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Business;
using Proje.DataAccess;

namespace Proje.Web
{
    public partial class Dashboard : System.Web.UI.Page
    {
        private DashboardData dashboardData;
        protected void Page_Load(object sender, EventArgs e)
        {
            dashboardData = new DashboardData();


        }
    }
}