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
    public partial class WebForm17 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE userdata " +
                                                "SET mobileno = @mobileno, " +
                                                "email = @email, " +
                                                "address = @address, " +
                                                "city = @city, " +
                                                "weight = @weight, " +
                                                "medicalCond = @medicalCond, " +
                                                "healthcardID = @healthcardID, " +
                                                "password = @password " +
                                                "WHERE cnic = @cnic", con);

                cmd.Parameters.AddWithValue("@cnic", Session["cnic"]);
                cmd.Parameters.AddWithValue("@mobileno", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@weight", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@medicalCond", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@healthcardID", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox11.Text.Trim());

                if (TextBox3.Text.Length != 11)
                {
                    Response.Write("<script>alert('Mobile Number Incorrect.');</script>");
                }
                else
                {
                    if (TextBox11.Text.Length < 5)
                    {
                        Response.Write("<script>alert('Password is Short.');</script>");
                    }
                    else
                    {
                        cmd.ExecuteNonQuery();
                        con.Close();
                        Response.Write("<script>alert('UPDATE Successful.');</script>");
                    }
                }

                

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}