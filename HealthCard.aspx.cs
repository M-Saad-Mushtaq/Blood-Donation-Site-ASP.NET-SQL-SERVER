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
    public partial class WebForm8 : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (cardExist())
            {

                Response.Write("<script>alert('Health Card Already Entered.');</script>");
            }
            else
            {
                if (cniccheck(TextBox2.Text.Trim()))
                {

                    Response.Write("<script>alert('CNIC Already have health card.');</script>");
                }
                else
                {
                    enterCard();
                }
            }
        }


        bool cniccheck(string id)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * FROM healthcard WHERE cnic = @cnic", con);
                cmd.Parameters.AddWithValue("@cnic", id);

                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        return true;
                    }
                    return true;
                }
                else
                {
                    return false;
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return true;
            }

        }

        bool cardExist()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from healthcard where healthcardID='" + TextBox1.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }



                con.Close();


            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void enterCard()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO healthcard(healthcardID,Name,expireDate,cnic) " +
                    "values(@id,@name,@edate,@cnic)", con);

                cmd.Parameters.AddWithValue("@id", TextBox1.Text.Trim());

                cmd.Parameters.AddWithValue("@cnic", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@edate", TextBox4.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('HealthCard Added.');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }

}