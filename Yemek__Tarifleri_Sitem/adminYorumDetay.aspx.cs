using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class adminYorumDetay : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yorumid"];

        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select YorumAdSoyad,YorumMail,Yorumicerik,YemekAd   From Tbl_yorumlar  inner join tbl_yemekler on tbl_yorumlar.yemekid=tbl_yemekler.yemekid where yorumid=@p1 ", bgl.baglanti());

            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = komut.ExecuteReader();
            while (reader.Read())
            {
                TxtAD.Text = reader[0].ToString();
                TxtMail.Text = reader[1].ToString();
                Txticerik.Text = reader[2].ToString();
                TxtYemek.Text = reader[3].ToString();

            }
        }
        bgl.baglanti().Close();

    }

    protected void BtnOnay_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("update  Tbl_Yorumlar set yorumicerik=@p1,yorumonay=@p2 where yorumid=@p3", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Txticerik.Text);
        komut.Parameters.AddWithValue("@p2", "True");
        komut.Parameters.AddWithValue("@p3", id);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}