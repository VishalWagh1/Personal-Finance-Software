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
    public partial class Income : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["constring"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userId"] != null)
            {
                if(!IsPostBack)
                {
                    gvSource.DataSource = GetSources();
                    gvSource.DataBind();

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
            SqlCommand cmd = new SqlCommand("Insert into Source (Source, Amount, Description, AddedDt, userId) values (@Source, @Amount, @Desc, @dt, @userId)", con);
            cmd.Parameters.AddWithValue("@Source", txtSource.Text);
            cmd.Parameters.AddWithValue("@Amount", txtAmt.Text);
            cmd.Parameters.AddWithValue("@Desc", txtDesc.Text);
            cmd.Parameters.AddWithValue("@dt", DateTime.Now);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
            con.Open();
            cmd.ExecuteNonQuery();
            gvSource.DataSource = GetSources();
            gvSource.DataBind();
            txtSource.Text = "";
            txtAmt.Text = "";
            txtDesc.Text = "";
            GetTotal();

        }

        protected DataSet GetSources()
        {
            con.Close ();
            SqlCommand cmd = new SqlCommand("select top 10 * from Source  where userId=@userId order by srno DESC", con);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());

            DataSet ds = new DataSet();
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            sda.Fill(ds);
            return ds;

        }

        protected void gvSource_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("delete from Source where srno='" + gvSource.DataKeys[e.RowIndex].Value + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            gvSource.EditIndex = -1;
            gvSource.DataSource = GetSources();
            gvSource.DataBind();
            
        }

        protected void GetTotal()
        {
            con.Close();
            SqlCommand cmd = new SqlCommand("select top 1 * from Source where userId=@userId", con);
            cmd.Parameters.AddWithValue("@userId", Session["userId"].ToString());
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.HasRows)
            {
                sdr.Read();
                lblTotal.Text = sdr.GetValue(6).ToString();

            }
        }

        protected void gvSource_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvSource.EditIndex = e.NewEditIndex;
            gvSource.DataSource = GetSources();
            gvSource.DataBind();
        }

        protected void gvSource_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvSource.EditIndex = -1;
            gvSource.DataSource = GetSources();
            gvSource.DataBind();
        }

        protected void gvSource_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = gvSource.Rows[e.RowIndex];
            string source = (row.FindControl("txteSource") as TextBox).Text;
            string amt = (row.FindControl("txteAmt") as TextBox).Text;
            string desc = (row.FindControl("txteDesc") as TextBox).Text;

            con.Close();
            SqlCommand cmd = new SqlCommand("update Source set Source=@src, Amount=@amt, Description=@desc where srno= '" + gvSource.DataKeys[e.RowIndex].Value + "'", con);
            cmd.Parameters.AddWithValue("@src", source);
            cmd.Parameters.AddWithValue("@amt", amt);
            cmd.Parameters.AddWithValue("@desc", desc);
            con.Open();
            cmd.ExecuteNonQuery();
            gvSource.EditIndex= -1;
            gvSource.DataSource = GetSources();
            gvSource.DataBind();
        }

        protected void GetReport_Click(object sender, EventArgs e)
        {
            Response.Redirect("SourceReport.aspx");
        }
    }
}