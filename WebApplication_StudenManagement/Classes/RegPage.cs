using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication_StudenManagement.Classes
{
    public class RegPage
    {
        private static RegPage service;

        public static RegPage Service 
        {
            get
            
            {
                if(service == null)
                {
                    service = new RegPage();
                }
                return service;
            } 
            set => service = value; 
        }

        public bool Register(string username, string password, string email, string phone)
        {
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@uname", username),
                new SqlParameter("@pass", password),
                new SqlParameter("@email", email),
                new SqlParameter("@phone", phone)
            };
            if(common.Instance.ExcecuteSQL("SP_RegUser_RegPage", sqlParameters, true))
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}