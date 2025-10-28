using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Security.Policy;

namespace WebApplication_StudenManagement.Classes
{
    public class common
    {
        private static common instance;
        private string strConnection = "Server = DESKTOP-G1I4OFP\\SQLEXPRESS;Database = StudentManagement;User ID = thanh; Password = qaz13579";

        public static common Instance { get => instance; set => instance = value; }

        public common()
        {
        }

        public DataTable GetTable(string query, SqlParameter[] parameters = null)
        {
            DataTable dt = new DataTable();
            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                conn.Open();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (parameters != null)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        adapter.Fill(dt);
                    }
                }
                conn.Close();
            }
            return dt;
        }

        public DataTable GetTable(string querySQL, SqlParameter[] sqlParameters= null, bool store_procedure = false)
        {
            DataTable dt = new DataTable();
            using(SqlConnection connection = new SqlConnection(strConnection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;
                    connection.Open();
                    if(store_procedure)
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                    }
                    else
                    {
                        cmd.CommandType = CommandType.Text;
                    }
                    cmd.CommandText= querySQL;
                    using(SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        if(sqlParameters != null)
                        {
                            cmd.Parameters.AddRange(sqlParameters);
                        }
                        adapter.Fill(dt);
                    }
                }
            }
            return dt;
        }
    }
}