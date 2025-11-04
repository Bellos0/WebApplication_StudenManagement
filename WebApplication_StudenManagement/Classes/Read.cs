using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication_StudenManagement.Classes
{
    public class Read
    {
        private static Read instance;
        public static Read Instance
        {
            get
            {
                if (instance == null)
                {
                    instance = new Read();
                }
                return instance;
            }
            set
                => instance = value;
        }
        public Read()
        {
        }

        public bool checkStuID(string stuID)
        {
            DataTable dt = new DataTable();
            System.Data.SqlClient.SqlParameter[] sqlParameters = new System.Data.SqlClient.SqlParameter[]
            {
                new System.Data.SqlClient.SqlParameter("@stuID", stuID)
            };
            dt = common.Instance.GetTable("SP_checkStuID", sqlParameters, true);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        public bool checkSubject(string subID, string subname)
        {
            DataTable dt = new DataTable();
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@subID", subID),
                new SqlParameter("@subname", subname)
            };
            dt = common.Instance.GetTable("SP_checkSubjectExist", sqlParameters, true);
            if(dt.Rows.Count <= 0)
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