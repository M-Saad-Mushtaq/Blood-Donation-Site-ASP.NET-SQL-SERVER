using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Blood
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"] != "user" && Session["role"] != "staff" && Session["role"] != "admin" )
                {
                    Session["cnic"] = "";
                    Session["name"] = "";
                    Session["role"] = "";
                }
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true;
                    LinkButton2.Visible = true;
                    LinkButton5.Visible = true;
                    LinkButton7.Visible = true;

                    LinkButton3.Visible = false;
                    LinkButton4.Visible = false;
                    LinkButton6.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    LinkButton3.Visible = true;
                    LinkButton4.Visible = true;
                    LinkButton4.Text = "Hello " + Session["name"].ToString();

                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton6.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                }
                else if (Session["role"].Equals("staff"))
                {
                    LinkButton3.Visible = true;
                    LinkButton4.Visible = true;
                    LinkButton4.Text = "Hello " + Session["name"].ToString();
                    LinkButton6.Visible = true;

                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton7.Visible = false;
                    LinkButton8.Visible = false;
                    LinkButton9.Visible = false;
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton3.Visible = true;
                    LinkButton4.Visible = true;
                    LinkButton4.Text = "Hello Admin";
                    LinkButton6.Visible = true;
                    LinkButton8.Visible = true;
                    LinkButton9.Visible = true;

                    LinkButton1.Visible = false;
                    LinkButton2.Visible = false;
                    LinkButton5.Visible = false;
                    LinkButton7.Visible = false;
                }
            }
            catch (Exception ex)
            {
                //Response.Write("<script>alert('hi" + ex.Message + "');</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["cnic"] = "";
            Session["name"] = "";
            Session["role"] = "";
            Response.Redirect("Home.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("profileedit.aspx");
        }

        protected void LinkButton5_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup_staff.aspx");
        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {
            Response.Redirect("patient.aspx");
        }

        protected void LinkButton7_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin_login.aspx");
        }

        protected void LinkButton8_Click(object sender, EventArgs e)
        {
            Response.Redirect("enterstaff.aspx");
        }

        protected void LinkButton9_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCenter.aspx");
        }
    }
}