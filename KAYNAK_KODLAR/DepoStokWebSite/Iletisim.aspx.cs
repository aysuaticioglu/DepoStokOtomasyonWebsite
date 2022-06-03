using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DepoStokWebSite
{
    public partial class Iletisim : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSend_Click(object sender, EventArgs e)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                mail.From = new MailAddress("komunikasyonlar@gmail.com");
                mail.To.Add("komunikasyonlar@gmail.com");
                mail.Subject = Name2.Text + "  isimli kullanıcıdan mesaj";
                mail.Body ="Kullanıcı: "+Name2.Text+"\n E-Posta: "+ Email2.Text +"\n Konu: "+ Subject2.Text +" \n Mesaj: "+ Message2.Text;
                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("komunikasyonlar@gmail.com", "//DepoStok//");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
                Label2.Text = "Mesajınız Başarıyla Gönderildi.";

            }
            catch
            {

                Label2.Text = "Mesajınız Gönderilirken Hata Oluştu.";
            }
        }
    }
}