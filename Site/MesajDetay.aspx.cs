using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sql baglan = new sql();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["MesajID"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Mesajlar  where MesajID=@t1", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", id);
            SqlDataReader okut = komut.ExecuteReader();
            while (okut.Read())
            {
                TextBoxAd.Text = okut[1].ToString();
                TextBoxMail.Text = okut[2].ToString();
                TextBoxİcerik.Text = okut[3].ToString();
            }
        }
    }
}