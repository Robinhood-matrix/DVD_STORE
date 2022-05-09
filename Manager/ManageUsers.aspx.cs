using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo.Admin
{
    public partial class ManageUsers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        

        protected void AddBtn_Click(object sender, EventArgs e)
        {
            DataView dataview = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            bool duplicate = dataview.Table.Rows.Count > 0;
            if (duplicate)
            {
                Response.Write("<script>alert('Duplicate Entry ! Please Add a new Item Name !')</script>");


            }
            else
            {
                SqlDataSource2.InsertParameters["UserNumber"].DefaultValue = UserNumber.Text;
                SqlDataSource2.InsertParameters["UserName"].DefaultValue =Username.Text;
                SqlDataSource2.InsertParameters["UserType"].DefaultValue = UserType.SelectedItem.Value;
                SqlDataSource2.InsertParameters["UserPassword"].DefaultValue = UserPassword.Text;
               
                

                SqlDataSource2.Insert();
                UserNumber.Text = "";
               Username.Text = "";
                UserType.Text = "";
               UserPassword.Text = "";
               
                //insertItemsSqlDataSource.DataBind();
                //Response.Write("Item Added");
            }



        }
    }
    }

