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
    public partial class editing : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                grid_bind();
            }
            
        }
        public void grid_bind()
        {
            string str = "select * from catagory_tab ";
            DataSet ds = ob.Fn_Dataset(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            

        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            grid_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int g = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[g].Value);
            TextBox txtp = (TextBox)GridView1.Rows[g].Cells[5].Controls[0];
            TextBox txtsts = (TextBox)GridView1.Rows[g].Cells[6].Controls[0];
            string str = "update catagory_tab set cat_price='" + txtp.Text + "',cat_status='" + txtsts.Text + "' where cat_id=" + getid + "";
            int i = ob.Fn_NonQuery(str);
            // grid_bind();
            GridView1.EditIndex = -1;
            DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int userid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from catagory_tab where cat_id=" + userid + " ";
            int j = ob.Fn_NonQuery(del);

            grid_bind();

        }
    }
}