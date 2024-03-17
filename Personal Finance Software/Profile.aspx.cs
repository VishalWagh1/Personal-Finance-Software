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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                if(!IsPostBack)
                {
                    ShowProfileDate();
                }

            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }

        protected void ShowProfileDate()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from Users where userId=@userId", con);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                txtFname.Text= sdr.GetValue(1).ToString();
                txtLname.Text= sdr.GetValue(2).ToString();
                txtEmail.Text= sdr.GetValue(3).ToString();
                txtContact.Text= sdr.GetValue(4).ToString();
                ddlOcc.SelectedItem.Text= sdr.GetValue(6).ToString();
                ddlOcc.Enabled = false;
            }
        }
        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("Update Users set firstname=@fname, lastname=@lname, Email=@email, Contact=@contact, UpdateDt=@dt where userId=@userId", con);
            cmd.Parameters.AddWithValue("@fname", txtFname.Text);
            cmd.Parameters.AddWithValue("@lname", txtLname.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@contact", txtContact.Text);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
            cmd.Parameters.AddWithValue("@dt", DateTime.Now);

            con.Open();
            cmd.ExecuteNonQuery();
            ShowProfileDate();
            //Response.Redirect("Home.aspx");
        }
    }
}