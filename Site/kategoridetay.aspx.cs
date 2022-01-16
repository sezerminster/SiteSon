using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class kategoridetay : System.Web.UI.Page
    {
        sql baglan = new sql();
        string yemek = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemek = Request.QueryString["KategoriID"];
            SqlCommand komut = new SqlCommand("select * from Tbl_Kitaplar where KategoriID=@t1", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", yemek);
            SqlDataReader oku = komut.ExecuteReader();
            DataList2.DataSource = oku;
            DataList2.DataBind();
            baglan.baglanti().Close();
        }


    }
}