using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DepoStokWebSite
{
    public partial class ProgramIndir : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnindir_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/octect-stream";
            Response.AppendHeader("content-disposition", "filename=DepoStokOtomasyon Editor.zip");
           Response.TransmitFile(Server.MapPath("C:/Users/asus/Desktop/DepoStok/KAYNAK_KODLAR/DepoStokWebSite/Assets/Demo/DepoStokOtomasyon Editor.zip"));


            Response.End();

        }
    }
}