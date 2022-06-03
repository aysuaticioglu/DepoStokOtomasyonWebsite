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
    public partial class UyeProfil : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["DepoStok2"].ToString());
        SqlCommand komut, komut2;
        SqlDataReader data;
        string resimad;
        string resim;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uyeid"] == null) { Response.Redirect("UyeGiris.aspx"); }
            if (!IsPostBack)
            {

                baglan.Open();
                komut = new SqlCommand("SELECT * FROM T_UYE  WHERE UYE_ID=@ID", baglan);
                komut.Parameters.AddWithValue("@ID", Session["uyeid"]);

                data = komut.ExecuteReader();
                if (data.Read())
                {
                    Name.Text = data[1].ToString();
                    Surname.Text = data[2].ToString();
                    Email.Text = data[3].ToString();
                    Password.Text = data[4].ToString();
                    resim = data[5].ToString();
                }
                UyeResim.ImageUrl = "~/Assets/User/" + resim;
                baglan.Close();
            }


        }

        protected void ButtonCikis_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("Default.aspx");
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {


            baglan.Open();

            komut2 = new SqlCommand("UPDATE T_UYE SET K_AD=@AD,K_SOYAD=@SOYAD,EMAIL=@EMAIL,SIFRE=@SIFRE,RESIM=@RESIM WHERE UYE_ID=@ID", baglan);
            komut2.Parameters.AddWithValue("@ID", Session["uyeid"]);
            komut2.Parameters.AddWithValue("@AD", Name.Text);
            komut2.Parameters.AddWithValue("@SOYAD", Surname.Text);
            komut2.Parameters.AddWithValue("@EMAIL", Email.Text);
            komut2.Parameters.AddWithValue("@SIFRE", Password.Text);
            resimad = resim;
            if (UyeResimYukle.HasFile)
            {
                resimad = UyeResimYukle.FileName;

                UyeResimYukle.SaveAs(Server.MapPath("~/Assets/User/") + resimad);


            }

            komut2.Parameters.AddWithValue("@RESIM", resimad);

            komut2.ExecuteNonQuery();
            baglan.Close();
            Session["uyead"] = Name.Text+" "+Surname.Text;

            Session["uyeresim"] = "~/Assets/User/" + resimad;

            Label1.Text = "Güncellendi";





        }
    }
}