using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace saleman.App_Start
{
    public class Utility
    {
        public static void CreateCookie(string CookieName, string[] keys, string[] Values,bool Expired, HttpResponse res)//keys (email and password) values (the value from email and password) expired (if remambers the values all the time or not)
        {
            HttpCookie c = new HttpCookie(CookieName);

            if (keys != null)
            {
                for (int i = 0; i < keys.Length; i++)
                    c.Values.Add(keys[i], Values[i]);
                if (!Expired)
                    c.Expires = DateTime.Now.AddYears(5);    
            }
            else
            {
                c.Expires = DateTime.Now.AddYears(-5);
            }
            res.Cookies.Add(c);
        }

        public static string ReadFromCookie(string CookieName,string key,HttpRequest req)
        {

            if (req.Cookies[CookieName] != null)
            {
                return req.Cookies[CookieName][key].ToString();
            }
            else
                return null;
            //try
            //{
            //    return req.Cookies[CookieName][key].ToString();
            //}

            //catch
            //{
            //    return null;
            //}
            
        }
        public static void RemoveCookie(string CookieName,HttpResponse res)
        {
            CreateCookie(CookieName, null, null, false, res);//אם אין שמירה לנתונים אז הולתך לcreatecookie ומוחק נתונים
        }
    }
}