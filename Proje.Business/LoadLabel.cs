using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proje.Business
{
    public class LoadLabel
    {
        MyPayEntities db = new MyPayEntities();

        public void AddEstablishment(string est_name, string phone_number, string adress, string website)
        {
            establishment est= new establishment();
            est.est_name = est_name;
            est.adress = adress;
            est.website = website;
            est.phone_number = phone_number;
            db.establishment.Add(est);
            db.SaveChanges();
        }

        

       
    }
}
