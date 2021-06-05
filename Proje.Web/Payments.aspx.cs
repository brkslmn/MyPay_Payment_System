﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class Payments : System.Web.UI.Page
    {
        protected void Page_PreInit(object sender, EventArgs e)
        {
            this.MasterPageFile = "~/MasterPage.Master";

            if (Session["user"] == null)
            {
                this.MasterPageFile = "~/Authorized.Master";
            }

            else if (Session["user"].Equals(1))
            {
                this.MasterPageFile = "~/MasterPage.Master";
            }
            else
            {
                this.MasterPageFile = "~/Authorized.Master";
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void new_pay_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/AddPayment.aspx");
        }
    }
}