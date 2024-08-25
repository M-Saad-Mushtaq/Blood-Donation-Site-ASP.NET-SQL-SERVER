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
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = false;
            Button2.Visible = false;
            TextBox2.Visible = false;
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

                SqlCommand cmd = new SqlCommand(" SELECT * FROM appointment WHERE id = @id", con);
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
            if (Session["role"].Equals(""))
            {
                Response.Write("<script>alert('You Need an Account to Proceed.');</script>");
            }
            else
            {
                try
                {
                    if (DropDownList1.SelectedItem.Value == "Acceptor")
                    {
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }
                        SqlCommand cmd = new SqlCommand("SELECT * " +
                            "from  medicalcenter join bloodInventory on medicalcenter.id = bloodInventory.centreid " +
                            "where medicalcenter.city=@center AND bloodInventory.bloodtype=@bloodtype;", con);

                        cmd.Parameters.AddWithValue("@center", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@bloodtype", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@usertype", DropDownList1.SelectedItem.Value);

                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        
                        if (dt.Rows.Count > 0)
                        {
                            GridView2.DataSource = dt;
                            GridView2.DataBind();
                            GridView2.Visible = true;
                            Button2.Visible = true;
                            TextBox2.Visible = true;
                        }
                        else
                        {
                            Response.Write("<script>alert('Blood not Available.');</script>");
                        }
                        con.Close();
                    }
                    else if(DropDownList1.SelectedItem.Value == "Donor")
                    {
                        SqlConnection con = new SqlConnection(strcon);
                        if (con.State == ConnectionState.Closed)
                        {
                            con.Open();
                        }

                        SqlCommand cmd = new SqlCommand("SELECT * from  medicalcenter where medicalcenter.city=@center;", con);


                        cmd.Parameters.AddWithValue("@center", TextBox1.Text.Trim());
                        cmd.Parameters.AddWithValue("@bloodtype", DropDownList2.SelectedItem.Value);
                        cmd.Parameters.AddWithValue("@usertype", DropDownList1.SelectedItem.Value);

                        SqlDataAdapter da = new SqlDataAdapter(cmd);
                        DataTable dt = new DataTable();
                        da.Fill(dt);

                        if (dt.Rows.Count > 0)
                        {
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                            GridView1.Visible = true;
                            Button2.Visible = true;
                            TextBox2.Visible = true;
                        }
                        else
                        {
                            Response.Write("<script>alert('Blood not Available.');</script>");
                        }
                        con.Close();
                    }
                }
                catch (Exception ex)
                {

                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }

        bool abovecheck()
        {
            if (DropDownList1.SelectedItem.Value == "Acceptor")
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * " +
                    "from  medicalcenter join bloodInventory on medicalcenter.id = bloodInventory.centreid " +
                    "where medicalcenter.city=@center AND bloodInventory.bloodtype=@bloodtype AND medicalcenter.id=@id;", con);

                cmd.Parameters.AddWithValue("@center", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@bloodtype", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@id", TextBox2.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                con.Close();

                if (dt.Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }

                
            }
            else if (DropDownList1.SelectedItem.Value == "Donor")
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from  medicalcenter where medicalcenter.city=@center AND id=@id;", con);


                cmd.Parameters.AddWithValue("@center", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@id", TextBox2.Text.Trim());

                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                con.Close();

                if (dt.Rows.Count > 0)
                {
                    return true;
                }
                else
                {
                    return false;
                }
            }

            return false;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["role"].Equals(""))
            {
                Response.Write("<script>alert('You Need an Account to Proceed.');</script>");
            }
            else
            {
                try
                {
                    if (abovecheck())
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

                        if (DropDownList1.SelectedItem.Value == "Acceptor")
                        {
                            SqlCommand cmdd = new SqlCommand("INSERT INTO appointment(id,cnic,centreID,date,apptype) " +
                                "values (@id,@cnic,@centerID,GETDATE() + 1,'A')", con);
                            cmdd.Parameters.AddWithValue("@centerID", TextBox2.Text.Trim());
                            cmdd.Parameters.AddWithValue("@cnic", Session["cnic"]);
                            cmdd.Parameters.AddWithValue("@id", random);

                            cmdd.ExecuteNonQuery();
                        }
                        else if (DropDownList1.SelectedItem.Value == "Donor")
                        {

                            SqlCommand cmdd = new SqlCommand("INSERT INTO appointment(id,cnic,centreID,date,apptype) " +
                                "values (@id,@cnic,@centerID,GETDATE() + 1,'D')", con);
                            cmdd.Parameters.AddWithValue("@centerID", TextBox2.Text.Trim());
                            cmdd.Parameters.AddWithValue("@cnic", Session["cnic"]);
                            cmdd.Parameters.AddWithValue("@id", random);

                            cmdd.ExecuteNonQuery();
                        }


                        con.Close();


                        Response.Write("<script>alert('Appointment ID = " + random + "');</script>");
                    }
                    else
                    {

                        Response.Write("<script>alert('Wrong Center.');</script>");
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('" + ex.Message + "');</script>");
                }
            }
        }
    }
}