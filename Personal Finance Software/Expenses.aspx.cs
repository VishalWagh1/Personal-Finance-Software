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
    
    public partial class Expenses : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                if (!IsPostBack)
                {
                    gvExp.DataSource = GetExpences();
                    gvExp.DataBind();

                    GetTotal();
                }
            }
            else
            {
                Response.Redirect("LogIn.aspx");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("Insert into Expences (Date, Expense, Amount, dt, userId) values (@Date, @Exp, @Amt, @dt, @userId)", con);
            cmd.Parameters.AddWithValue("@Date", DateTime.Now);
            cmd.Parameters.AddWithValue("@Amt", txtAmt.Text);
            cmd.Parameters.AddWithValue("@Exp", ddlExp.SelectedItem.Text);
            cmd.Parameters.AddWithValue("@dt", DateTime.Now);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            gvExp.DataSource = GetExpences();
            gvExp.DataBind();
            
            txtAmt.Text = "";
            ddlExp.SelectedIndex = 0;
            GetTotal();
        }

        protected void GetTotal()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select top 1 * from Expences where userId=@userId order by srno DESC", con);
            cmd.Parameters.AddWithValue("userId", Session["userId"].ToString());
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                lblTotal.Text = sdr.GetValue(5).ToString();
            }

        }

        protected void gvExp_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("delete from Expences where srno='" + gvExp.DataKeys[e.RowIndex].Value + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            gvExp.EditIndex = -1;
            gvExp.DataSource = GetExpences();
            gvExp.DataBind();
        }

        protected DataSet GetExpences()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select top 10 * from Expences  where userId=@userId order by srno DESC", con);
            cmd.Parameters.AddWithValue("userId", Session["userId"].ToString());

            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            return ds;

        }

        protected void GetReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("ExpenseReport.aspx");
        }
    }
}