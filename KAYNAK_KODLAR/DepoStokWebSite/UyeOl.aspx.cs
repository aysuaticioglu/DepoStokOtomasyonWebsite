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
    public partial class UyeOl : System.Web.UI.Page
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["DepoStok2"].ToString());
        SqlCommand komut, komut2;
        SqlDataReader data;
        string resimad = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSignUp_Click(object sender, EventArgs e)
        {
            try
            {

                komut2 = new SqlCommand("SELECT * FROM T_UYE WHERE EMAIL=@MAIL", baglan);

                komut2.Parameters.AddWithValue("@MAIL", Email.Text);
                baglan.Open();
                data = komut2.ExecuteReader();
                if (data.Read())
                {
                    Label1.Text = " ";
                    Label1.Text = "Bu mail adresi ile üye mevcut. Farklı mail adresi ile üye olunuz";


                }

                else
                {
                    baglan.Close();
                    baglan.Open();
                    int sonuc = String.Compare(Password.Text, Password2.Text);

                    if (sonuc==0)
                    {
                        komut = new SqlCommand("INSERT INTO T_UYE(K_AD,K_SOYAD,EMAIL,SIFRE,RESIM) VALUES(@K_AD,@K_SOYAD,@EMAIL,@SIFRE,@RESIM)", baglan);
                        komut.Parameters.AddWithValue("@K_AD", Name.Text);
                        komut.Parameters.AddWithValue("@K_SOYAD", Surname.Text);
                        komut.Parameters.AddWithValue("@EMAIL", Email.Text);
                        komut.Parameters.AddWithValue("@SIFRE", Password.Text);
                        resimad = "User.png";
                        if (FileUpload1.HasFile)
                        {
                            resimad = FileUpload1.FileName;

                            FileUpload1.SaveAs(Server.MapPath("~/Assets/User/") + resimad);
                        }
                        komut.Parameters.AddWithValue("@RESIM", resimad);

                        komut.ExecuteNonQuery();
                        baglan.Close();
                        Label1.Text = "ÜYE KAYDINIZ BAŞARIYLA OLUŞTURULDU";
                        Session["uyemail"] = Email.Text;
                        Response.Redirect("UyeGiris.aspx");
                    }
                    else
                    {
                        Label1.Text = "Şifreler Aynı Değil";
                    }

                }






            }
            catch
            {
                Label1.Text = "Hatalı Giriş";
            }





        }
    }
}