using System;
using System.Data.SqlClient;
public partial class Kategoriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack==false)
        {
            id = Request.QueryString["kategoriid"];
            islem = Request.QueryString["islem"];
        }
        SqlCommand cmd = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if(islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("Delete From Tbl_Kategoriler where kategoriid=@p1", bgl.baglanti());
            cmdsil.Parameters.AddWithValue("@p1", id);
            cmdsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;

    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void BtnEkle_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}