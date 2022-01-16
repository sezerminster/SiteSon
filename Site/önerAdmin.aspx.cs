using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
  
    public partial class önerAdmin : System.Web.UI.Page
    {  sql baglan = new sql();
        protected void Page_Load(object sender, EventArgs e)
            
        {
            Panel1.Visible = false;

            Panel2.Visible = false;
            SqlCommand komut = new SqlCommand("Select * from Tbl_Ozetler where OzetDurum=0", baglan.baglanti());
            SqlDataReader oku = komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

            SqlCommand komut2 = new SqlCommand("Select * from Tbl_Ozetler where OzetDurum=1", baglan.baglanti());
            SqlDataReader oku2 = komut2.ExecuteReader();
            DataList2.DataSource = oku2;
            DataList2.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            Panel1.Visible = true;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            Panel1.Visible = false;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            Panel2.Visible = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

            Panel2.Visible = false;
        }
    }
}