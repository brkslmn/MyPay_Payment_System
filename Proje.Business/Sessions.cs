using Proje.DataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Proje.Business
{
    public class Sessions
    {
        public static int getSessionRole(string username, string password)
        {
            MyPayEntities db = new MyPayEntities();
            using (db)
            {
                try
                {
                    var query = (from user in db.users
                                 where user.email == username && user.password == password
                                 select user.admin).FirstOrDefault();
                    return query ?? -1;
                }

                catch
                {
                    return 00404;
                }
            }
        }

        public static List<users> getCredentials(string username, string password)
        {
            MyPayEntities db = new MyPayEntities();
            using (db)
            {
                var sorgu = from i in db.users
                            where i.email == username && i.password == password
                            select i;

                List<users> infos = sorgu.ToList();
                return infos;
            }

        }
    }
}

