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
    public partial class Home : System.Web.UI.Page
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

        protected void btnIncome_Click(object sender, EventArgs e)
        {
            Response.Redirect("Income.aspx");
        }

        
        protected void btnExenses_Click(object sender, EventArgs e)
        {
            Response.Redirect("Expenses.aspx");
        }

        protected void btnInvestments_Click(object sender, EventArgs e)
        {
            Response.Redirect("Investments.aspx");
        }
    }
}