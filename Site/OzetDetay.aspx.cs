using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class OzetDetay : System.Web.UI.Page
    {
        sql baglan = new sql();
        string yemek = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemek = Request.QueryString["KitapID"];
            SqlCommand komut = new SqlCommand("select KitapADI from Tbl_Kitaplar where KitapID=@p1", baglan.baglanti());
            komut.Parameters.AddWithValue("@p1", yemek);

            SqlDataReader oku = komut.ExecuteReader();
            while (oku.Read())
            {
             
            }
            baglan.baglanti().Close();

            yemek = Request.QueryString["KitapID"];
            SqlCommand komut2 = new SqlCommand("select YorumADSOYAD,YorumTarih,YorumYAZI from Tbl_Yorum where KitapID=@p2 and YorumOnay=1", baglan.baglanti());
            komut2.Parameters.AddWithValue("@p2", yemek);
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList3.DataSource = oku2;
            DataList3.DataBind();

            SqlCommand komutt = new SqlCommand("select * from Tbl_Kitaplar where KitapID=@t1", baglan.baglanti());
            komutt.Parameters.AddWithValue("@t1", yemek);

            SqlDataReader okuu = komutt.ExecuteReader();

            DataList2.DataSource = okuu;
            DataList2.DataBind();

        }

        protected void ButtonYorum_Click(object sender, EventArgs e)
        {
            SqlCommand komut3 = new SqlCommand("insert into Tbl_Yorum(YorumADSOYAD,YorumMAIL,YorumYAZI,KitapID) values(@t1,@t2,@t3,@t4)", baglan.baglanti());
            komut3.Parameters.AddWithValue("@t1", TextYorumAd.Text);
            komut3.Parameters.AddWithValue("@t2", TextYorumMail.Text);
            komut3.Parameters.AddWithValue("@t3", TextYorumİcer.Text);
            komut3.Parameters.AddWithValue("@t4", yemek);
            komut3.ExecuteNonQuery();
            Response.Write("Yorum alınmıştır.");
            TextYorumAd.Text = "";
            TextYorumMail.Text = "";
            TextYorumİcer.Text = "";
            baglan.baglanti().Close();
        }


    }
}