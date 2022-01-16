using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Site
{
    public class sql
    {
        public SqlConnection baglanti() { 
        SqlConnection  baglan = new SqlConnection(@"Data Source=SEZER;Initial Catalog=Dbo_Books;Integrated Security=True");
        baglan.Open();
            return baglan;
    }
}
}