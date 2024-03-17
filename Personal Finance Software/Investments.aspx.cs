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
    public partial class Investments : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"]!=null)
            {
                if (!IsPostBack)
                {
                    gvInvest.DataSource = GetInvests();
                    gvInvest.DataBind();

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
            SqlCommand cmd = new SqlCommand("Insert into Investments (Investments, AmtInvested, DateInvested, Description, userId) values (@Invest, @Amt, @dt, @Desc, @userId)", con);
            cmd.Parameters.AddWithValue("@Invest", txtInvest.Text);
            cmd.Parameters.AddWithValue("@Amt", txtAmt.Text);
            cmd.Parameters.AddWithValue("@Desc", txtDesc.Text);
            cmd.Parameters.AddWithValue("@dt", DateTime.Now);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            txtInvest.Text = string.Empty;
            txtAmt.Text = string.Empty;
            txtDesc.Text = string.Empty;
            GetTotal();
        }

        
        protected DataSet GetInvests()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select top 10 * from Investments where userId=@userId order by Id DESC", con);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString() );
            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            return ds;
        }

        protected void GetTotal()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select top 1 * from Investments where userId=@userId order by Id DESC", con);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                lblTotal.Text = sdr.GetValue(6).ToString();
            }
        }
        protected void gvInvest_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("delete from Investments where Id='" + gvInvest.DataKeys[e.RowIndex].Value + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            gvInvest.EditIndex = -1;
            gvInvest.DataSource = GetInvests();
            gvInvest.DataBind();
        }

        protected void gvInvest_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvInvest.EditIndex = e.NewEditIndex;
            gvInvest.DataSource= GetInvests();
            gvInvest.DataBind();
        }

        protected void gvInvest_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvInvest.EditIndex= -1;
            gvInvest.DataSource = GetInvests();
            gvInvest.DataBind();
        }

        protected void gvInvest_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvInvest.Rows[e.RowIndex];
            string invest = (row.FindControl("txteInvest") as TextBox).Text;
            string amt = (row.FindControl("txteAmt") as TextBox).Text;
            string desc = (row.FindControl("txteDesc") as TextBox).Text;

            con.Close();
            SqlCommand cmd = new SqlCommand("update Investments set Investments=@invest, AmtInvested=@amt, Description=@desc where Id='" + gvInvest.DataKeys[e.RowIndex].Value + "'", con);
            cmd.Parameters.AddWithValue("@invest", invest);
            cmd.Parameters.AddWithValue ("@amt", amt);
            cmd.Parameters.AddWithValue ("@desc", desc);
            con.Open();
            cmd.ExecuteNonQuery();
            gvInvest.EditIndex = -1;
            gvInvest.DataSource= GetInvests();
            gvInvest.DataBind();
            GetTotal();
        }

        protected void btnRpt_Click(object sender, EventArgs e)
        {
            Response.Redirect("InvestReport.aspx");
        }
    }
}