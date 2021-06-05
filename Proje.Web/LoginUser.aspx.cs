using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.DataAccess;
using Proje.Business;


namespace Proje.Web
{
    public partial class LoginUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["user"] == null)
                {

                }

                else if (Session["user"].Equals(1))
                {
                    Session.Abandon();
                    Session.Clear();
                    Response.Cookies.Clear();
                }
            }

            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Danger')", true);
            }
        }

        public void btnLogin_Click(object sender, EventArgs e)
        {

            if (emailInput.Value == "" || passwordInput.Value == "")
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('You did not fill in all the fields!')", true);
            }

            try
            {
                int user = Proje.Business.Sessions.getSessionRole(emailInput.Value, passwordInput.Value);

                if (user == 0)
                {
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username and/or password are incorrect')", true);
                }

                else if (user == 1)
                {
                    List<users> Credentials = Proje.Business.Sessions.getCredentials(emailInput.Value, passwordInput.Value);

                    Session["user"] = user;
                    Session["first_name"] = Credentials[0].first_name;
                    Session["last_name"] = Credentials[0].last_name;
                    Session["email"] = Credentials[0].email;
                    Session["admin"] = Credentials[0].admin;
                    Response.Redirect("~/Dashboard.aspx");
                }

            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('exception')", true);
            }

        }
    }
}