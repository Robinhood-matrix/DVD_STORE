using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo.User
{
    public partial class CustomerDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //customerTextBox.Text = customerDropDownList.SelectedValue;
           
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Search_btn_Click(object sender, EventArgs e)
        {
            GridView2.DataSourceID = "";
            GridView2.DataSource = SqlDataSource1;
            GridView2.DataBind();
        }
    }
}