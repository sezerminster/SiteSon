using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class arama : System.Web.UI.Page
    {
        sql baglan = new sql();


        protected void Page_Load(object sender, EventArgs e)
        {

            if (Request.QueryString["ara"] != null)
            {
                string aranan = Request.QueryString["ara"];
                SqlCommand komut = new SqlCommand("Select * from Tbl_Kitaplar inner join Tbl_Kategoriler on Tbl_Kategoriler.KategoriID=Tbl_Kitaplar.KategoriID Where KitapADI Like '%" + aranan + "%' Order By KitapID Desc", baglan.baglanti());

                SqlDataReader tbl = komut.ExecuteReader();

                DataList2.DataSource = tbl;
                DataList2.DataBind();

            }
            else
                Response.Write("kelime bulunamadı");
        }


    }

}