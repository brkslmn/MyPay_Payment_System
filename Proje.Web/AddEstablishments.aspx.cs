using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proje.Business;
using Proje.DataAccess;

namespace Proje.Web
{
    public partial class AddEstablishments : System.Web.UI.Page
    {
        private LoadLabel addEstablishment;
        protected void Page_Load(object sender, EventArgs e)
        {
            addEstablishment = new LoadLabel();
        }
        protected void addest_Click(object sender, EventArgs e)
        {
            var est_name = txtEstName.Text;
            //var est_id = txtEstid.;
            var phone_number = txtPhone.Text;
            var adress = txtAdress.Text;
            var website = txtWebsite.Text;
            addEstablishment.AddEstablishment(est_name, phone_number, adress, website);
            Response.Redirect("~/Establishment.aspx");
        }
    }
}