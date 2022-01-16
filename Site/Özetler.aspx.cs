using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class Özetler : System.Web.UI.Page
    {
        sql baglan = new sql();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("select * from Tbl_Kitaplar", baglan.baglanti());
            SqlDataReader okut = komut.ExecuteReader();
            DataList2.DataSource = okut;
            DataList2.DataBind();

        }
    }
}