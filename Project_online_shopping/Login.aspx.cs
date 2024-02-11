using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_online_shopping
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass cls = new ConnectionClass(); 
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlString = "select count(login_id) From Login_tab where username = '" + TextBox1.Text + "' AND Password = '" + TextBox2.Text + "'";
            string cid = cls.Fn_Scalar(sqlString);
            if (cid == "1")
            {
                sqlString = "select reg_id From Login_tab where username = '" + TextBox1.Text + "' AND Password = '" + TextBox2.Text + "'";
                string uid = cls.Fn_Scalar(sqlString);
                Session["uid"] = uid;
                sqlString = "select login_type From Login_tab where reg_id = " + uid + "";
                string logintype = cls.Fn_Scalar(sqlString);
                Session["logintype"] = logintype;
                //FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, true);
                if (logintype == "admin")
                {
                    Response.Redirect("AdminPage.aspx");
                }
                else if (logintype == "user")
                {
                    Response.Redirect("UserPage.aspx");
                }
                else
                {
                    Response.Redirect("Home.aspx");
                }
            }
            else
            {
                Label1.Text = "Invalid Username and Password";
            }
        }
    }
}