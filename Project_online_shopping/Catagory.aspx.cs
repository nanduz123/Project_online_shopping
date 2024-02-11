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
    public partial class cart : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        public string sqlString = "";
        protected void Page_Load(object sender, EventArgs e)
        {

            Label5.Text = "";
            if (!IsPostBack)
            {
                Session.Remove("cat_id");
                viewCategory();
            }
        }
        public void viewCategory()
        {
           // Panel2.Visible = false;
            sqlString = "Select cat_id,cat_name,cat_img,cat_description,cat_status from catagory_tab";
            DataSet ds = ob.Fn_Dataset(sqlString);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }
      


        protected void Button1_Click(object sender, EventArgs e)
        {
            string phs = "";
            phs = "~/Photo/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(phs));
            Image1.ImageUrl = phs;
            string str="insert into catagory_tab values('"+TextBox1.Text+"','"+phs+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')";
            int i = ob.Fn_NonQuery(str);
            if(i!=0)
            {
                Label1.Text = "catagory added successfully";

            }
            viewCategory();
        }




        protected void Button4_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            Button1.Visible = true;
            Image1.Visible = false;
            Button2.Visible = false;
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            string sqlString = "Select cat_id,cat_name,cat_img,cat_price,cat_description,cat_status from category_tab where cat_id = " + e + " "; Panel2.Visible = true;
            Button2.Visible = false;
            Image1.Visible = true;
            Button3.Visible = true;
            SqlDataReader dr = ob.Fn_DataReader(sqlString);
            if (dr.Read() == true)
            {
                TextBox1.Text = dr["cat_name"].ToString();
                Image1.ImageUrl = dr["cat_img"].ToString();
                TextBox2.Text = dr["cat_price"].ToString();
                TextBox3.Text = dr["cat_description"].ToString();
                TextBox4.Text = dr["cat_status"].ToString();

                Session["cat_id"] = dr["cat_id"].ToString();
            }
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e)
        {
            string sqlString = "Update catagory_tab set cat_status='inactive' where cat_id = " + e.CommandArgument;
            int i = ob.Fn_NonQuery(sqlString);
            if (i != 0)
            {
                Label5.Text = "Category deleted successfully";
            }
            viewCategory();
        }
    }
}