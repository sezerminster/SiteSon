using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class adminkitapdetay : System.Web.UI.Page
    {
        sql baglan = new sql();
        string id = ""; string idd;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack == false)
            {
                id = Request.QueryString["KitapID"];
                SqlCommand komut = new SqlCommand("select * from  Tbl_Kitaplar where KitapID=@t7", baglan.baglanti());
                komut.Parameters.AddWithValue("@t7", id);
                SqlDataReader okur = komut.ExecuteReader();

                while (okur.Read())
                {
                    TextBoxAd.Text = okur[1].ToString();
                    TextBoxkarakter.Text = okur[2].ToString();
                    TextBoxozet.Text = okur[3].ToString();
                    TextBoxPuan.Text = okur[6].ToString();
                    TextBoxyazar.Text = okur[7].ToString();


                }
                baglan.baglanti().Close();

                id = Request.QueryString["KitapID"];
                SqlCommand komutt = new SqlCommand("select KitapRESİM from Tbl_Kitaplar where KitapID=@t9", baglan.baglanti());
                komutt.Parameters.AddWithValue("@t9", id);
                SqlDataReader oku = komutt.ExecuteReader();
                DataList1.DataSource = oku;
                DataList1.DataBind();

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
        }
        protected void ButtonGüncelle_Click(object sender, EventArgs e)
        {
            id = Request.QueryString["KitapID"];





            SqlCommand komutt = new SqlCommand("select * from Tbl_Kitaplar KategoriID where KitapID=@t1", baglan.baglanti());
            komutt.Parameters.AddWithValue("@t1", id);


            SqlDataReader okuu = komutt.ExecuteReader();
            while (okuu.Read())
            {
                idd = okuu[8].ToString();
            }
            Response.Write("idd alınmıştır");
            Response.Write(idd);
            baglan.baglanti().Close();




            SqlCommand komut = new SqlCommand("update  Tbl_Kitaplar set KitapADI=@t1 ,KitapKARAKTERLERİ=@t2, KitapÖZETİ =@t3,KitapPUAN=@t4 ,KitapYAZAR=@t5,KategoriID=@t6 where KitapID=@t7", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBoxAd.Text);
            komut.Parameters.AddWithValue("@t2", TextBoxkarakter.Text);
            komut.Parameters.AddWithValue("@t3", TextBoxozet.Text);
            komut.Parameters.AddWithValue("@t4", TextBoxPuan.Text);
            komut.Parameters.AddWithValue("@t5", TextBoxyazar.Text);

            komut.Parameters.AddWithValue("@t6", DropDownList1.SelectedValue);
            komut.Parameters.AddWithValue("@t7", id);
            komut.ExecuteNonQuery();
            Response.Write("kayıt alındı");
            baglan.baglanti().Close();

            if (idd != DropDownList1.SelectedValue)
            {
                SqlCommand komut2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet+1 where KategoriID=@t6", baglan.baglanti());
                komut2.Parameters.AddWithValue("t6", DropDownList1.SelectedValue);
                komut2.ExecuteNonQuery();
                Response.Write("if yapısı çalıştı");

                SqlCommand komutt2 = new SqlCommand("update Tbl_Kategoriler set KategoriAdet=KategoriAdet-1 where KategoriID=@t6", baglan.baglanti());
                komutt2.Parameters.AddWithValue("t6", idd);
                komutt2.ExecuteNonQuery();


            }
            if (FileUpload1.HasFile)
            {
                id = Request.QueryString["KitapID"];
                FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
                SqlCommand komut3 = new SqlCommand("update Tbl_Kitaplar set KitapRESİM=@t8 where KitapID = @t7", baglan.baglanti());

                komut3.Parameters.AddWithValue("@t7", id);
                komut3.Parameters.AddWithValue("t8", "~/resimler/" + FileUpload1.FileName);
                komut3.ExecuteNonQuery();
                baglan.baglanti().Close();
           

            if (CheckBox1.Checked)
            {
                id = Request.QueryString["KitapID"];
                SqlCommand komut4 = new SqlCommand("insert into Tbl_Slider(Resim) select KitapRESİM from Tbl_Kitaplar where KitapID=@t1", baglan.baglanti());
                komut4.Parameters.AddWithValue("@t1", id);
                komut4.ExecuteReader();
                Response.Write("slider tablosuna ekleme yapıldı.");

                SqlCommand komut5 = new SqlCommand("Update Tbl_Slider  set ResimDurum=1 ", baglan.baglanti());
                komut5.ExecuteReader();
                Response.Write("KİTAP durum 1 yapıldı");

            }


 }


        }
    }
}