using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Runtime.CompilerServices;

public partial class Yemekler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
         if(Page.IsPostBack == false)
        {
            id = Request.QueryString["yemekid"];
            islem = Request.QueryString["islem"];
            
            SqlCommand cmd2 = new SqlCommand("Select * From Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr2 = cmd2.ExecuteReader();

        DropDownList1.DataTextField = "KategoriAd";
        DropDownList1.DataValueField = "Kategoriid";
        
        DropDownList1.DataSource = dr2;
        DropDownList1.DataBind();
        }
         if (islem == "sil")
        {
            SqlCommand cmd3 = new SqlCommand("Delete from Tbl_Yemekler where yemekid=@p1", bgl.baglanti());
            cmd3.Parameters.AddWithValue("@p1", id);
            cmd3.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
        
        
        
        
        SqlCommand cmd = new SqlCommand("Select * From Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = cmd.ExecuteReader();
        
        DataList1.DataSource = dr;
        DataList1.DataBind();

        

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
        SqlCommand cmd = new SqlCommand("insert into tbl_yemekler (yemekad,yemekmalzeme,yemektarif,kategoriid) values (@p1,@p2,@p3,@p4)" ,bgl.baglanti());
        cmd.Parameters.AddWithValue("@p1", TextBox1.Text);
        cmd.Parameters.AddWithValue("@p2", TextBox2.Text);
        cmd.Parameters.AddWithValue("@p3", TextBox3.Text);
        cmd.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        cmd.ExecuteNonQuery();
        bgl.baglanti().Close();

        //KAtegori Sayısını arttırma
        SqlCommand komut= new SqlCommand("update Tbl_Kategoriler set kategoriadet=kategoriadet+1 where kategoriid=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();


    }
}