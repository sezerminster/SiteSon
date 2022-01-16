using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Site
{
    public partial class İletisim : System.Web.UI.Page
    {
        sql baglan = new sql();
        protected void Page_Load(object sender, EventArgs e) { }
       
        

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand komut = new SqlCommand("insert into  Tbl_Mesajlar (MesajAdSoyad,Mail,İcerik) values(@t1,@t2,@t3)", baglan.baglanti());
            komut.Parameters.AddWithValue("@t1", TextBoxAd.Text);
            komut.Parameters.AddWithValue("@t2", TextBoxMail.Text);
            komut.Parameters.AddWithValue("@t3", TextBoxMesaj.Text);
            komut.ExecuteNonQuery();
            Response.Write("kayıt alndı");
        }
    }
}