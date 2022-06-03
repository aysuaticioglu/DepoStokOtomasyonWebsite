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
    public partial class Site : System.Web.UI.MasterPage
    {
        SqlConnection baglan = new SqlConnection(ConfigurationManager.ConnectionStrings["DepoStok2"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["uyeid"] != null)
            {
               

                UyeAd.Text = Session["uyead"].ToString();
                UyeResim.ImageUrl = Session["uyeresim"].ToString();
                UyeResim.Visible = true;
                Link.HRef = "UyeProfil.aspx";



            }
            else
            {

                UyeResim.Visible = false;
            }
        }

    }
}