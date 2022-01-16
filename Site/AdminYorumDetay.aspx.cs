using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class AdminYorumDetay : System.Web.UI.Page
    {
        sql baglan = new sql();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["YorumID"];
                SqlCommand komut = new SqlCommand("Select YorumADSOYAD,YorumMAIL,YorumYAZI,KitapADI from Tbl_Yorum inner join Tbl_Kitaplar on Tbl_Yorum.KitapID=Tbl_Kitaplar.KitapID where YorumID =@t1 ", baglan.baglanti());
                komut.Parameters.AddWithValue("@t1", id);
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBoxAd.Text = oku[0].ToString();
                    TextBoxMail.Text = oku[1].ToString();
                    TextBoxİcerik.Text = oku[2].ToString();
                    TextBoxYemek.Text = oku[3].ToString();




                }
                Response.Write("veriler getirdil");
                baglan.baglanti().Close();



            }
        }


        protected void ButtonGüncelle_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["YorumID"];
            SqlCommand komut = new SqlCommand("update Tbl_Yorum set YorumOnay=1 where YorumID=@t1 ", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", id);

            komut.ExecuteNonQuery();
            Response.Write("güncelleme tamam");
            baglan.baglanti().Close();

        }
    }
}