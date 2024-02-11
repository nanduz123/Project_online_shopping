using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Project_online_shopping
{
    public class ConnectionClass
    {
        SqlConnection con;
        SqlCommand cmd;
        public ConnectionClass()
        {
            con = new SqlConnection(@"server=LAPTOP-BEAPHHB7\SQLEXPRESS01;database=project_db;Integrated Security=True");

        }
        public int Fn_NonQuery(string sqlquery)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string Fn_Scalar(string sqlquery)
        {
            if(con.State==ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(sqlquery, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public SqlDataReader Fn_DataReader(string Sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            cmd = new SqlCommand(Sqlquery, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;

        }
        public DataSet Fn_Dataset(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;

        }
        public  DataTable Fn_DataTable(string sqlquery)
        {
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            SqlDataAdapter da = new SqlDataAdapter(sqlquery, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}