using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood
{
    public partial class WebForm12 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals(""))
            {
                Response.Write("<script>alert('You Need an Account to Proceed.');</script>");
            }
            else
            {
                try
                {


                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("SELECT * from  bloodtest where id=@id AND cnic=@cnic;", con);


                    cmd.Parameters.AddWithValue("@cnic", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@id", TextBox3.Text.Trim());

                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);

                    if (dt.Rows.Count > 0)
                    {
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        GridView1.Visible = true;
                    }
                    else
                    {
                        Response.Write("<script>alert('Invalid ID.');</script>");
                    }



                    con.Close();


                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }
    }
}