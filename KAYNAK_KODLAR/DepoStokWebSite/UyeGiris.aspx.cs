using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DepoStokWebSite
{
    public partial class UyeGiris : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["DepoStok2"].ToString());
        SqlCommand komut;
        SqlDataReader data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uyemail"] != null)
            {
                Email.Text = Session["uyemail"].ToString();

            }
        }

        protected void BtnSign_Click(object sender, EventArgs e)
        {
            try
            {
                baglan.Open();
                komut = new SqlCommand("SELECT * FROM T_UYE U WHERE U.EMAIL=@EMAIL AND U.SIFRE=@SIFRE", baglan);
                komut.Parameters.AddWithValue("@EMAIL", Email.Text);
                komut.Parameters.AddWithValue("@SIFRE", Password.Text);
                data = komut.ExecuteReader();
                if (data.Read())
                {

                    Session["uyeid"] = data[0].ToString();
                    Session["uyead"] = data[1] + " " + data[2];
                    Session["uyeresim"] = "~/Assets/User/" + data[5];
                    if (Request.QueryString["Deneme"] != null)
                    {
                        Response.Redirect("ProgramIndir.aspx");
                    }
                    else
                    {
                        Response.Redirect("Default2.aspx");
                    }

                }
                else
                {
                    Label1.Text = "Email ya da Şifre Yanlış.";
                }
                baglan.Close();




            }
            catch
            {

                Label1.Text = "Hatalı Giriş";
            }

        }
    }
}