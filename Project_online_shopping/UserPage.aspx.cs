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
    public partial class UserPage : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        public string sqlString = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null || Session["logintype"] == null || (Session["uid"] != null && Session["uid"].ToString() == "") || (Session["logintype"] != null && Session["logintype"].ToString() != "user"))
            {
                Response.Redirect("Login.aspx");
            }
            //if (!IsPostBack)
            //{
            //    Session.Remove("CategoryId");
            //}
            sqlString = "Select cat_id,cat_name,cat_img,cat_description from category_tab where cat_status = 'available'";

            DataSet ds = ob.Fn_Dataset(sqlString);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}