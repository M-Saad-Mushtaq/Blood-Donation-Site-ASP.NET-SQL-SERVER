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
    public partial class WebForm1 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (checkmember())
            {

                Response.Write("<script>alert('Account with this CNIC already exists.');</script>");
            }
            else
            {
                signup();
            }
        }

        bool checkmember()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from userdata where cnic='" + TextBox10.Text.Trim() + "';", con);
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

        void signup()
        {

            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO userdata(cnic,name,gender,bdate,address,email,mobileno,bloodtype,weight,medicalCond,city,healthcardID,password) " +
                    "values(@cnic,@name,@gender,@bdate,@address,@email,@mobileno,@bloodtype,@weight,@medicalCond,@city,@healthcardID,@password)", con);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());

                cmd.Parameters.AddWithValue("@bdate", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@mobileno", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@weight", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@medicalCond", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@healthcardID", TextBox9.Text.Trim());
                cmd.Parameters.AddWithValue("@cnic", TextBox10.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox11.Text.Trim());

                cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@bloodtype", DropDownList2.SelectedItem.Value);

                if (TextBox3.Text.Length != 11)
                {
                    Response.Write("<script>alert('Mobile Number Incorrect.');</script>");
                }
                else
                {
                    if (TextBox11.Text.Length < 5)
                    {
                        Response.Write("<script>alert('Password Short.');</script>");
                    }
                    else
                    {
                        if (TextBox10.Text.Length != 13)
                        {
                            Response.Write("<script>alert('CNIC Length Short .');</script>");
                        }
                        else
                        {
                            cmd.ExecuteNonQuery();
                            con.Close();

                            Response.Write("<script>alert('Sign up Successful. Go to Login page to login');</script>");
                        }
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