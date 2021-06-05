using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Proje.DataAccess;

namespace Proje.Business
{
    public class DashboardData
    {
        MyPayEntities db = new MyPayEntities();

        public void GetLabelData(int number, int balance)
        {
            portfolio port = new portfolio();
            port.number = number;
            port.balance = balance;
           
            
        }
    }
}
