using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_online_shopping
{
    public partial class User_Registration : System.Web.UI.Page
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
            string ins = "insert into user_reg_tab values(" + reg_id + ",'" + TextBox1.Text + "','" + TextBox6.Text + "',"+TextBox2.Text+",'"+RadioButtonList1.SelectedItem.Text+"','"+DropDownList1.SelectedItem.Text+"','"+TextBox4.Text+"','"+TextBox5.Text+"','Active')";
            int i = ob.Fn_NonQuery(ins);
            if (i != 0)
            {
                string inslog = "insert into Login_tab values(" + reg_id + ",'" + TextBox7.Text + "','" + TextBox8.Text + "','User','Active')";
                int j = ob.Fn_NonQuery(inslog);
                Label8.Text = "user registered successfully";
            }
        }

       
    }
}