using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proje.Web
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnRegister_Click(object sender, EventArgs e)
        {

            var bsn = new Business.ControlUser();
            bsn.UserRegister(firstname.Value, lastname.Value, email.Value, password.Value, phone_number.Value);

            if (Page.IsValid)
            {
                Response.Redirect("~/Login.aspx");
            }

        }
    }
}