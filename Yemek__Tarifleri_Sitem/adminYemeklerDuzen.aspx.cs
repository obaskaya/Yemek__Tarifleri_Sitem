using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class adminYemeklerDuzen : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["Yemekid"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("Select * from tbl_yemekler where yemekid=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader reader = komut.ExecuteReader();
            while (reader.Read())
            {
                TextBox1.Text = reader[1].ToString();
                TextBox2.Text = reader[2].ToString();
                TextBox3.Text = reader[3].ToString();
            }
            bgl.baglanti().Close();
            if (Page.IsPostBack == false)
            {
                

                SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
                SqlDataReader dr2 = cmd2.ExecuteReader();

                DropDownList1.DataTextField = "KategoriAd";
                DropDownList1.DataValueField = "Kategoriid";

                DropDownList1.DataSource = dr2;
                DropDownList1.DataBind();
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        FileUpload1.SaveAs(Server.MapPath("/resimler/" + FileUpload1.FileName));
        SqlCommand komut = new SqlCommand("update tbl_yemekler set yemekad=@p1,yemekmalzeme=@p2,yemektarif=@p3,kategoriid=@p5,YemekResim=@p6 where yemekid=@p4", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TextBox1.Text);
        komut.Parameters.AddWithValue("@p2", TextBox2.Text);
        komut.Parameters.AddWithValue("@p3", TextBox3.Text);
        komut.Parameters.AddWithValue("@p4", id);
        komut.Parameters.AddWithValue("@p5", DropDownList1.SelectedValue);
        komut.Parameters.AddWithValue("@p6", "~/resimler/" + FileUpload1.FileName);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {    //tüm yemekler 0
        SqlCommand komut = new SqlCommand("update tbl_yemekler set durum=0", bgl.baglanti());
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();

        SqlCommand komut2 = new SqlCommand("update tbl_yemekler set Durum=1 where yemekid=@p1", bgl.baglanti());
        komut2.Parameters.AddWithValue("@p1", id);
        komut2.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}