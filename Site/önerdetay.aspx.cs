﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class önerdetay : System.Web.UI.Page
    {
        sql baglan = new sql();
        string id = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.QueryString["OzetID"];
            SqlCommand komut = new SqlCommand("select * from Tbl_Ozetler where OzetID=@t1", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", id);
            SqlDataReader oku = komut.ExecuteReader();

            while (oku.Read())
            {
                TextBoxAd.Text = oku[1].ToString();
                TextBoxMalzeme.Text = oku[2].ToString();
                TextBoxYapilis.Text = oku[3].ToString();
                TextBoxÖneren.Text = oku[6].ToString();
                TextBoxMail.Text = oku[7].ToString();
                TextBoxyazar.Text= oku[5].ToString();

            }
            baglan.baglanti().Close();

            SqlCommand komutt = new SqlCommand("select * from Tbl_Ozetler where OzetID=@t2", baglan.baglanti());
            komutt.Parameters.AddWithValue("@t2", id);
            SqlDataReader okuu = komutt.ExecuteReader();
            DataList1.DataSource = okuu;
            DataList1.DataBind();
            baglan.baglanti().Close();
            if (Page.IsPostBack == false)
            {

                SqlCommand komut3 = new SqlCommand("select * from Tbl_Kategoriler", baglan.baglanti());
                SqlDataReader okur2 = komut3.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAdı";
                DropDownList1.DataValueField = "KategoriID";
                DropDownList1.DataSource = okur2;
                DropDownList1.DataBind();

                baglan.baglanti().Close();



            }
        }

        protected void ButtonOnay_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["OzetID"];
            SqlCommand komut = new SqlCommand("update Tbl_Ozetler set OzetDurum=1 where OzetID=@t1", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", id);
            komut.ExecuteNonQuery();
            Response.Write("Özet Onaylanmıştır");
            baglan.baglanti().Close();


            SqlCommand komut2 = new SqlCommand("insert into Tbl_Kitaplar(KitapADI,KitapKARAKTERLERİ,KitapÖZETİ,KitapRESİM,KitapYAZAR,KategoriID) values(@t1,@t2,@t3,@t4,@t5,@t6) ", baglan.baglanti());
            komut2.Parameters.AddWithValue("@t1", TextBoxAd.Text);
            komut2.Parameters.AddWithValue("@t2", TextBoxMalzeme.Text);
            komut2.Parameters.AddWithValue("@t3", TextBoxYapilis.Text);
        
            komut2.Parameters.AddWithValue("@t5", TextBoxyazar.Text);
            komut2.Parameters.AddWithValue("@t6", DropDownList1.SelectedValue);
            komut2.ExecuteNonQuery();
            baglan.baglanti().Close();


        }
    }
}