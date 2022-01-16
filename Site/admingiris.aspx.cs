using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class admingiris : System.Web.UI.Page
    {
        sql baglan = new sql();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string kullanici = TextBox1.Text;
            string sifre = TextBox2.Text;

            SqlCommand komut = new SqlCommand("select * from Tbl_Admin where AdminADSOYAD=@KullaniciAdi AND AdminSIFRE=@Sifre", baglan.baglanti());
            komut.Parameters.AddWithValue("KullaniciAdi", kullanici);
            komut.Parameters.AddWithValue("Sifre", sifre);

            SqlDataReader oku = komut.ExecuteReader();
            if (oku.Read())
            {
                Session["Kullanici"] = oku["AdminADSOYAD"].ToString();
                Response.Redirect("adminkategori.aspx");

            }
            else
                Response.Write("yanlış");

            oku.Close();
            baglan.baglanti().Close();
            baglan.baglanti().Dispose();
        }
    }
}


