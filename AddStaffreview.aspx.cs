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
    public partial class WebForm13 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        int generaterand()
        {
            int min = 1000;
            int max = 9999;
            Random rdm = new Random();
            return rdm.Next(min, max);
        }


        bool idcheck(int id)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * FROM staffreview WHERE id = @id", con);
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


        bool staffcheck(string id)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand(" SELECT * FROM staff WHERE id = @id", con);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["role"] == "user")
            {
                int random = generaterand();


                while (idcheck(random))
                {
                    random = generaterand();
                }

                try
                {
                    if (centercheck(TextBox1.Text.Trim()))
                    {
                        if (staffcheck(TextBox4.Text.Trim()))
                        {
                            SqlConnection con = new SqlConnection(strcon);
                            if (con.State == ConnectionState.Closed)
                            {
                                con.Open();
                            }


                            SqlCommand cmd = new SqlCommand("INSERT INTO staffreview(id,cnic,staffid,staffrating,remarks,centerid) " +
                                "values(@id,@cnic,@staffid,@staffrating,@remarks,@centerid)", con);

                            cmd.Parameters.AddWithValue("@id", random);
                            cmd.Parameters.AddWithValue("@cnic", Session["cnic"]);
                            cmd.Parameters.AddWithValue("@staffid", TextBox4.Text.Trim());
                            cmd.Parameters.AddWithValue("@remarks", TextBox5.Text.Trim());
                            cmd.Parameters.AddWithValue("@centerid", TextBox1.Text.Trim());
                            cmd.Parameters.AddWithValue("@staffrating", DropDownList1.SelectedItem.Value);

                            cmd.ExecuteNonQuery();
                            con.Close();

                            Response.Write("<script>alert('Review added.');</script>");
                        }
                        else
                        {
                            Response.Write("<script>alert('Wrong Staff ID.');</script>");

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
            else
            {

                Response.Write("<script>alert('Only user can add review.');</script>");
            }
        }
    }
}