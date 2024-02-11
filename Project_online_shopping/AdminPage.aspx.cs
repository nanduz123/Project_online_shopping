using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_online_shopping
{
    public partial class AdminPage : System.Web.UI.Page
    {
        //ConnectionClass ob=new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null || Session["logintype"] == null || (Session["uid"] != null && Session["uid"].ToString() == "") || (Session["logintype"] != null && Session["logintype"].ToString() != "admin"))
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}