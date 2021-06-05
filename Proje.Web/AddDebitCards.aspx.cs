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
    public partial class AddDebitCards : System.Web.UI.Page
    {
        private DebitCardsAdd debitCardsAdd;
        protected void Page_Load(object sender, EventArgs e)
        {
            debitCardsAdd = new DebitCardsAdd();
        }
        protected void btnCard_Click(object sender, EventArgs e)
        {
            var card_number = txtCardNumber.Text;
            debitCardsAdd.AddDebitCards(Int32.Parse((card_number)));
            Response.Redirect("~/Debit_Cards.aspx");
        }
    }
}