using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Site
{
    public partial class uyeol : System.Web.UI.Page
    {
        sql baglan = new sql();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Label1.Visible=false;
        }

        protected void ButtonUye_Click(object sender, EventArgs e)
        {
            string aranan = Request.QueryString["ara"];
            SqlCommand komutt = new SqlCommand("Select * from Tbl_Uyeler Where UyeMail Like '%" + Textmail.Text + "%' Order By UyeID Desc", baglan.baglanti());
            SqlDataReader oku = komutt.ExecuteReader();
            while (oku.Read())
            {
                TextBox2.Text = oku[1].ToString();
            }
            if (TextBox2.Text != Textmail.Text)
            {

                if (Textsifre.Text == Texttekrar.Text)
                {

                    SqlCommand komut = new SqlCommand("insert into Tbl_Uyeler(UyeMail,UyeSifre,UyeAdSoyad,UyeKullanici) values(@t1,@t2,@t3,@t5)", baglan.baglanti());
                    komut.Parameters.AddWithValue("@t1", Textmail.Text);
                    komut.Parameters.AddWithValue("@t2", Textsifre.Text);

                    komut.Parameters.AddWithValue("@t3", Textad.Text);


                    komut.Parameters.AddWithValue("@t5", Textkulad.Text);
                    komut.ExecuteNonQuery();


                    baglan.baglanti().Close();
                    Textmail.Text = " ";
                    Textsifre.Text = " ";



                    Textad.Text = " ";


                    Textkulad.Text = " ";

                }
            }

            else
            {
                    Label1.Visible = true;
                    Label1.Text = "Bu mail ile kayıtlı bir hesap var";
                }

         
        }
    }
}