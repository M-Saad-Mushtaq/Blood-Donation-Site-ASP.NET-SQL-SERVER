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
    public partial class WebForm9 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checktest())
            {

                Response.Write("<script>alert('Test with this CNIC already exists.');</script>");
            }
            else
            {
                entertest();
            }
        }

        bool checktest()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from bloodtest where cnic='" + TextBox10.Text.Trim() + "';", con);
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

                SqlCommand cmd = new SqlCommand(" SELECT * FROM bloodtest WHERE id = @id", con);
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


        bool testcheck()
        {
            int.TryParse(TextBox1.Text.Trim(), out int temp);
            int.TryParse(TextBox3.Text.Trim(), out int hm);
            int.TryParse(TextBox4.Text.Trim(), out int plat);
            int.TryParse(TextBox5.Text.Trim(), out int rbc);

            if (temp >= 36 && temp <= 38)
            {
                if (hm > 9)
                {
                    if (plat >= 150000 && plat <= 450000)
                    {
                        if (rbc >= 4 && rbc <= 6)
                        {
                            return true;
                        }
                        else
                        {
                            return false;
                        }
                    }
                    else
                    {
                        return false;
                    }
                }
                else
                {
                    return false;
                }
            }
            else
            {
                return false;
            }
        }

        void entertest()
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

                    int random = generaterand();

                    while (idcheck(random))
                    {
                        random = generaterand();
                    }

                    SqlCommand cmd = new SqlCommand("INSERT INTO bloodtest(id, cnic, bloodtype, bloodpressure, temp, haemoglobin, plateletecount, redbloodcell, centreid , result) " +
                        "values(@id, @cnic, @bloodtype, @bp, @temp, @haemoglobin, @platelet, @rbc, @centreid, @result);", con);

                    cmd.Parameters.AddWithValue("@temp", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@id", random);

                    cmd.Parameters.AddWithValue("@bp", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@haemoglobin", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@platelet", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@rbc", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@centreid", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@cnic", TextBox10.Text.Trim());

                    cmd.Parameters.AddWithValue("@gender", DropDownList1.SelectedItem.Value);
                    cmd.Parameters.AddWithValue("@bloodtype", DropDownList2.SelectedItem.Value);


                    if (testcheck())
                    {
                        cmd.Parameters.AddWithValue("@result", "Normal");
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@result", "Abnormal");
                    }
                    cmd.ExecuteNonQuery();
                    con.Close();

                    Response.Write("<script>alert('Test Entered Successfully.');</script>");
                }
                else
                {

                    Response.Write("<script>alert('Wrong Center ID.');</script>");
                }

            }
            catch (Exception ex)
            {

                Response.Write("<script>alert('Exception');</script>");
            }
        }
    }
}