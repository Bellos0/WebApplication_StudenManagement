using System;
using System.Collections.Generic;
using System.Data;
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
    }
}