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
    public partial class WebForm10 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkcenter())
            {

                Response.Write("<script>alert('Center with this ID already exists.');</script>");
            }
            else
            {
                entercenter();
            }
        }

        bool checkcenter()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from medicalcenter where id='" + TextBox2.Text.Trim() + "';", con);
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

        void entercenter()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO medicalcenter(id,city, address, name, contact, facilities) " +
                    "values(@id,@city,@address,@name,@contact,@facilities)", con);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());

                cmd.Parameters.AddWithValue("@id", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@facilities", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();

                Response.Write("<script>alert('Entry Successful.');</script>");

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}