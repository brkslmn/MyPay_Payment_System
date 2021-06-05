using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Proje.DataAccess;
using Proje.Business;

namespace Proje.Business
{
    public class ControlUser
    {
        public bool UserLogin(string email, string password)
        {
            MyPayEntities db = new MyPayEntities();

            using (db)
            {
                var sorgu = (from x in db.users
                             where x.email == email && x.password == password
                             select x).FirstOrDefault();
                if (sorgu != null)
                {
                    return true;
                }
                else return false;
            }
        }

        public void UserRegister(string first_name, string last_name, string email, string password, int admin, string phone_number)
        {
            MyPayEntities db = new MyPayEntities();

            users user = new users();
            try
            {
                user.first_name = first_name;
                user.last_name = last_name;
                user.email = email;
                user.password = password;
                user.phone_number = phone_number;
                user.admin = 1;
                db.users.Add(user);
                db.SaveChanges();
            }
            catch (Exception e)
            {
                throw e;
            }
        
        }
    }
}
