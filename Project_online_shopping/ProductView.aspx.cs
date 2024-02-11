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
    public partial class ProductView : System.Web.UI.Page
    {
        ConnectionClass cls = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null || Session["login_type"] == null || (Session["uid"] != null && Session["uid"].ToString() == "") || (Session["logintype"] != null && Session["logintype"].ToString() != "user"))
            {
                Response.Redirect("Login.aspx");
            }


            string sqlString = "select * from product_tab P inner join catagory_tab C ON C.cat_id = P.cat_id where prd_status ='active' ";
            if (Request["Catagory"] != null && Request["Catagory"].ToString() != "")
            {
                sqlString += "and cat_id = " + Request["Catagory"];
            }
            DataSet ds = cls.Fn_Dataset(sqlString);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["prd_id"] = e.CommandArgument;
            Response.Redirect("product_details.aspx");
        }
    }
}