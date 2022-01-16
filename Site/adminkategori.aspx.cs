﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site { 
    public partial class Kategoriler : System.Web.UI.Page
    {

        sql baglan = new sql();
        string islem = " ";
        string id = " ";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("select * from Tbl_Kategoriler", baglan.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();

                Panel2.Visible = false;
                Panel4.Visible = false;
                id = Request.QueryString["KategoriID"];
                islem = Request.QueryString["islem"];
                if (islem == "sil")
                {
                    SqlCommand komut2 = new SqlCommand("delete from  Tbl_Kategoriler where kategoriID=@t1", baglan.baglanti());
                    komut2.Parameters.AddWithValue("@t1", id);
                    komut2.ExecuteNonQuery();
                    Response.Write("silme tamam");
                    baglan.baglanti().Close();
                }
            }
        }

        protected void ButtonArtı_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
        }

        protected void ButtonEksi_Click(object sender, EventArgs e)
        {
            Panel2.Visible = false;
        }

        protected void ButtonArtı0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = true;
        }

        protected void ButtonEksi0_Click(object sender, EventArgs e)
        {
            Panel4.Visible = false;
        }

        protected void ButtonEkle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler(KategoriAdı) values (@t1)", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBoxAd.Text);
          
            komut.ExecuteNonQuery();
            Response.Write("kayıt alındı");
            TextBoxAd.Text = "";

            baglan.baglanti().Close();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}