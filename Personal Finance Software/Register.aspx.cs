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
    public partial class Register : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
        

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("insert into Users (firstname, lastname, Email, Contact, Occupation, Password, RegisterDt) values (@firstname, @lastname, @email, @contact, @occupation, @pwd, @RegisterDt)", con);
            cmd.Parameters.AddWithValue("@firstname", txtFname.Text);
            cmd.Parameters.AddWithValue("@lastname", txtLname.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@occupation", ddlOcc.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@pwd", txtpwd.Text);
            cmd.Parameters.AddWithValue("@RegisterDt", DateTime.Now);
            con.Open();
            cmd.ExecuteNonQuery();

            txtFname.Text = string.Empty;
            txtLname.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtContact.Text = string.Empty;
            ddlOcc.SelectedIndex = 0;
            txtpwd.Text = string.Empty;

            Response.Write("<script>alert('You have registered successfully..!')</script>");
            Response.Redirect("Home.aspx");
            
        }

       
    }
}