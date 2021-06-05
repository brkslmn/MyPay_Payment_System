using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Proje.Business;
using Proje.DataAccess;

namespace Proje.Business
{
    public class PaymentAdd
    {
        MyPayEntities db = new MyPayEntities();

        public void AddPayment(string establishment_name, int customer_number, float user_balance, float payment_amount)
        {
            payments pay = new payments();
            pay.establishment_name = establishment_name;
            pay.customer_number = customer_number;
            pay.user_balance = user_balance;
            pay.payment_amount = payment_amount;
            db.payments.Add(pay);
            db.SaveChanges();
        }
    }
}
