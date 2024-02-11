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
    public partial class Products : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sqlString = "select cat_id,cat_name from catagory_tab where cat_status = 'active'";
                DataSet ds = ob.Fn_Dataset(sqlString);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "cat_name";
                DropDownList1.DataValueField = "cat_id";
                DropDownList1.DataBind();

                Session.Remove("prd_id");
                viewProducts();
            }
        }
        public void viewProducts()
        {
            Panel2.Visible = false;
            string sqlString = "select * from product_tab P " +
                "inner join catagory_tab C ON C.cat_id = P.Cat_id";
            DataSet ds = ob.Fn_Dataset(sqlString);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
    }
}