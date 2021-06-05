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
    public partial class AddPayment : System.Web.UI.Page
    {
        private PaymentAdd paymentAdd;
        protected void Page_Load(object sender, EventArgs e)
        {
            paymentAdd = new PaymentAdd();
        }
        protected void addpay_Click(object sender, EventArgs e)
        {
            var est_name = txtEstName.Text;
            var number = txtNumber.Text;
            var balance = txtBalance.Text;
            var payment = txtPayment.Text;
            paymentAdd.AddPayment(est_name, Int32.Parse(number), Int32.Parse(balance), Int32.Parse(payment));
            Response.Redirect("~/Payments.aspx");
        }
    }
}