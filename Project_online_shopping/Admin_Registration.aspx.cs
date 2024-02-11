using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Project_online_shopping
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(reg_id) from Login_tab";
            string regid = ob.Fn_Scalar(sel);
            int reg_id = 0;
            if (regid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(regid);
                reg_id = newregid + 1;
            }
            string ins = "insert into admin_reg_tab values(" + reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "','"+TextBox3.Text+"','"+TextBox4.Text+"')";
            int i = ob.Fn_NonQuery(ins);
            if (i != 0)
            {
                string inslog = "insert into Login_tab values(" + reg_id + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','Admin','Active')";


                int j = ob.Fn_NonQuery(inslog);
               Label1.Text = " Registered successfully";
            }

    
        }
    }
}
