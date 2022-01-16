using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
   
    public partial class AnaSayfa : System.Web.UI.Page
    { sql baglan = new sql();
        protected void Page_Load(object sender, EventArgs e)
        {
         
            SqlCommand komutt = new SqlCommand("select *  from Tbl_Slider where ResimDurum=1 ", baglan.baglanti());
            SqlDataReader oku = komutt.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();
        }
    }
}