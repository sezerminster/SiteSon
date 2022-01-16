using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class adminHakkımızda : System.Web.UI.Page
    {
        sql baglan = new sql();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * from Tbl_Hakkimizda", baglan.baglanti());
                SqlDataReader oku = komut.ExecuteReader();
                while (oku.Read())
                {
                    TextBoxMetin.Text = oku[0].ToString();
                }
                baglan.baglanti().Close();
            }
        }

        protected void ButtonGüncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("update Tbl_Hakkimizda set icerik=@t1", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBoxMetin.Text);
            komut.ExecuteNonQuery();
            Response.Write("güncelleme işlemi tamamdır");
            baglan.baglanti().Close();
        }
    }
}