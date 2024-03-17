using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Personal_Finance_Software
{
    public partial class InvestReport : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {

            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }


        protected void btnInv_Click(object sender, EventArgs e)
        {
            gvInv.DataSource = GetInvRpt();
            gvInv.DataBind();
        }
        protected DataSet GetInvRpt()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select * from Investments where DateInvested between '" + txtFromDt.Text + "' and '" + txtToDt.Text + "' and userId=@userId order by Id DESC", con);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            return ds;
        }

        
    }
}