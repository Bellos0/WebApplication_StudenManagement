using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.AccessControl;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Security.Policy;
using Microsoft.SqlServer.Server;
using System.Net.Mail;

namespace WebApplication_StudenManagement.Classes
{
    public class common
    {
        private static common instance;
        private string strConnection = "Server = DESKTOP-G1I4OFP\\SQLEXPRESS;Database = StudentManagerment;User ID = thanh; Password = qaz13579";

        public static common Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new common();
                }
                return instance;
            }
            set
                => instance = value;
        }

        public common()
        {
        }

        /// <summary>
        /// Gettable take record from database then input to the table user created, using query in backend code
        /// </summary>
        /// <param name="query"></param>
        /// <param name="parameters"></param>
        /// <returns></returns>
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


        /// <summary>
        /// Gettable take record from database then input to the table user created, using Store procedure in SQL server
        /// </summary>
        /// <param name="querySQL"></param>
        /// <param name="sqlParameters"></param>
        /// <param name="store_procedure"></param>
        /// <returns></returns>
        public DataTable GetTable(string querySQL, SqlParameter[] sqlParameters = null, bool store_procedure = false)
        {
            DataTable dt = new DataTable();
            using (SqlConnection connection = new SqlConnection(strConnection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = connection;
                    connection.Open();
                    if (store_procedure)
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                    }
                    else
                    {
                        cmd.CommandType = CommandType.Text;
                    }
                    cmd.CommandText = querySQL;
                    using (SqlDataAdapter adapter = new SqlDataAdapter(cmd))
                    {
                        if (sqlParameters != null)
                        {
                            cmd.Parameters.AddRange(sqlParameters);
                        }
                        adapter.Fill(dt);
                    }
                }
            }
            return dt;
        }


        /// <summary>
        /// dung insert update du lieu len database bang store procedure tren SQL server.
        /// True: record thanh cong
        /// False: record that bai
        /// </summary>
        /// <param name="SP_SQL"></param>
        /// <param name="parameters"></param>
        /// <param name="storeProcedure"></param>
        /// <returns></returns>
        public bool ExcecuteSQL(string SP_SQL, SqlParameter[] parameters = null, bool storeProcedure = false)
        {
            using (SqlConnection conn = new SqlConnection(strConnection))
            {
                using (SqlCommand cmd = new SqlCommand())
                {
                    cmd.Connection = conn;
                    conn.Open();
                    if (storeProcedure)
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                    }
                    else
                    {
                        cmd.CommandType = CommandType.Text;
                    }
                    cmd.CommandText = SP_SQL;
                    if (parameters != null)
                    {
                        cmd.Parameters.AddRange(parameters);
                    }
                    if (cmd.ExecuteNonQuery() <= 0)
                    {
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
            }
        }

    }
}