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
    public partial class enterdata : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkstaff())
            {

                Response.Write("<script>alert('Account with this CNIC already exists.');</script>");
            }
            else
            {
                enterstaff();
            }
        }

        bool checkstaff()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from staff where id='" + TextBox10.Text.Trim() + "';", con);
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


        bool centercheck(string id)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * FROM medicalcenter WHERE id = @id", con);
                cmd.Parameters.AddWithValue("@id", id);

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

        void enterstaff()
        {

            try
            {
                if (centercheck(TextBox6.Text.Trim()))
                {
                    SqlConnection con = new SqlConnection(strcon);
                    if (con.State == ConnectionState.Closed)
                    {
                        con.Open();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO staff(id, name, gender, bdate, email, address, mobileno, centreid, password) " +
                        "values(@cnic,@name,@gender,@bdate,@email,@address,@mobileno,@centerid,@password);", con);

                    cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());

                    cmd.Parameters.AddWithValue("@bdate", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@mobileno", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@centerid", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@cnic", TextBox10.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox11.Text.Trim());

                    cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);

                    if (TextBox3.Text.Length != 11)
                    {
                        Response.Write("<script>alert('Mobile Number Incorrect.');</script>");
                    }
                    else
                    {
                        if (TextBox10.Text.Length != 13)
                        {
                            Response.Write("<script>alert('CNIC Length Short .');</script>");
                        }
                        else
                        {
                            if (TextBox11.Text.Length < 5)
                            {
                                Response.Write("<script>alert('Password Length Short .');</script>");
                            }
                            else
                            {
                                cmd.ExecuteNonQuery();
                                con.Close();
                                Response.Write("<script>alert('UPDATE Successful.');</script>");
                            }
                        }

                    }
                }
                else
                {
                    Response.Write("<script>alert('Wrong Center ID.');</script>");
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}