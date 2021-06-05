using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Proje.DataAccess;

namespace Proje.Business
{
    public class DebitCardsAdd
    {
        MyPayEntities db = new MyPayEntities();
        
        public void AddDebitCards(int card_number)
        {
            user_debit_cards udc = new user_debit_cards();
            udc.card_number = card_number;
            db.user_debit_cards.Add(udc);
            db.SaveChanges();
        }
    }
}
