using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication_StudenManagement.Classes
{
    public class LogPage
    {
        private static LogPage instance;
        public LogPage()
        {
        }

        public static LogPage Instance { get => instance; set => instance = value; }

        public DataTable GetUser(string email, string password)
        {
            DataTable dt = new DataTable();
            string query = "SELECT email, pass FROM Users WHERE email = @email";
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@username", email),
                new SqlParameter("@password", password)
            };
            dt = common.Instance.GetTable(query, sqlParameters);

            
           

            return dt;
        }
    }
}