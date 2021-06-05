using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Proje.DataAccess;

namespace Proje.Business
{
    public class Session
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
                var sorgu = from liste in db.users
                            where liste.email == username && liste.password == password
                            select liste;

                List<users> infos = sorgu.ToList();
                return infos;
            }

        }
    }
