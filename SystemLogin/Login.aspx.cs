using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MasterPageDemo.Login
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
            
            
        }
        
        protected void loginBtn_Click(object sender, EventArgs e)
        {
            Session["user"] = username.Text;
            string str, UserName, Password;
            SqlCommand com;
            SqlDataAdapter sqlda;
            DataTable dt;
            int RowCount;
            string connectionString = ConfigurationManager.ConnectionStrings["dvd_storeConnectionString"].ConnectionString.ToString();

            try
            {
                SqlConnection con = new SqlConnection(connectionString);
                con.Open();
                str = "Select * from [User]";
                com = new SqlCommand(str);
                sqlda = new SqlDataAdapter(com.CommandText, con);
                dt = new DataTable();
                sqlda.Fill(dt);
                RowCount = dt.Rows.Count;
                for (int i = 0; i < RowCount; i++)
                {
                    UserName = dt.Rows[i]["UserName"].ToString();
                    Password = dt.Rows[i]["UserPassword"].ToString();

                    if (UserName == username.Text && Password == password.Text)
                    {
                        Session["UserName"] = UserName;
                        if (dt.Rows[i]["UserType"].ToString() == "Manager")
                            Response.Redirect("~/Manager/Dashboard.aspx");
                       else if (dt.Rows[i]["UserType"].ToString() == "Assistant")
                            Response.Redirect("~/Assistant/dashboard.aspx");
                    }
                    else
                    {
                        eLabel.Text = "Invalid User Name or Password! Please try again!";
                    }
                }


            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }


            //try
            //{

            //    string uid1 = username.Text;
            //    string pass1 = password.Text;
            //    using (SqlConnection con = new SqlConnection(constr))
            //    {
            //        con.Open();
            //        string qry = "select * from Users where UserName='" + uid1 + "' and password='" + pass1 + "'";
            //        SqlCommand cmd = new SqlCommand(qry, con);
            //        SqlDataReader sdr = cmd.ExecuteReader();
            //        if (sdr.Read())
            //        {
            //            FormsAuthentication.RedirectFromLoginPage(uid1, true);

            //            //Response.Redirect("/User/dashboard.aspx");
            //        }
            //        else
            //        {
            //         //   Response.Write("<script language=javascript>alert('Login Failed!', 'Please Try Again!', 'error');</script>");

            //            Response.Write("<script language=javascript>alert('Please Enter correct Username and Password');</script>");

            //        }
            //        con.Close();
            //    }

            //}
            //catch (Exception ex)
            //{
            //    Response.Write(ex.Message);
            //}




        }

        protected void SkipBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Home.aspx");
        }
    }
}