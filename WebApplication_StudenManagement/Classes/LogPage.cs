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

        public static LogPage Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new LogPage();
                }
                return instance;
            }
            set
            {
                instance = value;
            }

        }

        public DataTable GetUser(string email, string password)
        {
            DataTable dt = new DataTable();
            //string query = "SELECT * FROM teacherlog WHERE email = @email";
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@email", email),
                //new SqlParameter("@password", password)
            };
            dt = common.Instance.GetTable("SP_GetUser_LogPage", sqlParameters, true);
            return dt;
        }
    }
}