using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personal_Finance_Software
{
    public partial class Log_In : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogIn_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from Users where Email=@email and Password=@pwd", con);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                Session["userId"] = sdr.GetValue(0);
                Response.Redirect("Home.aspx");
            }
            else
            {
                Response.Write("<script>alert('Incorrect Email Id and Password..!')</script>");
            }
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            Response.Redirect("Register.aspx");
        }

               
       

        protected void btnRPdw_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ResetPwd.aspx");
        }
    }
}