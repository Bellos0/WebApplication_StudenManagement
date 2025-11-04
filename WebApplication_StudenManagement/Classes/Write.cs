using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;

namespace WebApplication_StudenManagement.Classes
{
    public class Write
    {
        private static Write instance;

        public static Write Instance
        {
            get
            {
                if (instance != null)
                {
                    return instance;
                }
                else
                {
                    instance = new Write();
                    return instance;
                }
            }
            set => instance = value;
        }

        public Write() { }

        public bool AddStudent(string stuID, string fullname, string dob, string sex, string class_, string address, string parentphone)
        {
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@stuID", stuID),
                new SqlParameter("@fullname", fullname),
                new SqlParameter("@dob", dob),
                new SqlParameter("@sex",sex),
                new SqlParameter("@class", class_),
                new SqlParameter("@address", address),
                new SqlParameter("@parentphone", parentphone)
            };

            if (common.Instance.ExcecuteSQL("SP_AddStudent", sqlParameters, true))
            {
                return false;
            }
            else
            {
                return true;
            }
        }

        public bool AddSubject(string subID, string subName)
        {
            SqlParameter[] sqlParameters = new SqlParameter[]
            {
                new SqlParameter("@subID", subID),
                new SqlParameter("@subname", subName)
            };
            if(common.Instance.ExcecuteSQL("SP_AddSubject", sqlParameters,true))
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