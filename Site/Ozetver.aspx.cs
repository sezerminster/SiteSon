using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class Ozetver : System.Web.UI.Page
    {
        sql baglan = new sql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["kullanici"] == null)
            {
                Response.Redirect("girisyap.aspx");
            }


            else
                Response.Write("hoşgeldiniz");
            {

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
 SqlCommand komut = new SqlCommand("insert into Tbl_Ozetler(OzetADI,OzetKarakterler,OzetYazı,OzetKitapFoto,OzetYazar,OzetKisi,OzetKisiMail) values (@t1,@t2,@t3,@t4,@t5,@t6,@t7)", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBoxAd.Text);
            komut.Parameters.AddWithValue("@t2", TextBoxKarakter.Text);
            komut.Parameters.AddWithValue("@t3", TextBozOzet.Text);




            komut.Parameters.AddWithValue("@t4",FileUploadResim.FileName);
            komut.Parameters.AddWithValue("@t5", TextBoxYazar.Text);
       
            komut.Parameters.AddWithValue("@t6", TextBoxKisi.Text);
            komut.Parameters.AddWithValue("@t7", TextBoxMail.Text);
            komut.ExecuteNonQuery();
            Response.Write("kayıt alındı");
        }
    }

}
