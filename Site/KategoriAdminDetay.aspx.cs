using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{

    public partial class KategoriAdminDetay : System.Web.UI.Page
    {
        sql baglan = new sql();
        string kategori = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                kategori = Request.QueryString["KategoriID"];
                SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler where KategoriID=@t1", baglan.baglanti());
                komut.Parameters.AddWithValue("@t1", kategori);

                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBoxKatAd.Text = oku[1].ToString();
                    TextBoxAdet.Text = oku[2].ToString();

                }
                baglan.baglanti().Close();
            }
        }

        protected void ButtonGüncelle_Click(object sender, EventArgs e)
        {
            kategori = Request.QueryString["KategoriID"];
            SqlCommand komut = new SqlCommand("update Tbl_Kategoriler set KategoriAdı=@t1,KategoriAdet=@t2 where KategorID=@t5 ", baglan.baglanti());
            komut.Parameters.AddWithValue("@t5", kategori);
            komut.Parameters.AddWithValue("@t1", TextBoxKatAd.Text);
            komut.Parameters.AddWithValue("@t2", TextBoxAdet.Text);

            komut.ExecuteNonQuery();
            Response.Write("GÜNCELLEME YAPILMIŞTIR.");
            baglan.baglanti().Close();
        }
    }
}