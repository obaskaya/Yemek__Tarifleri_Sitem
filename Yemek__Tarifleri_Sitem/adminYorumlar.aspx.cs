using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class Yorumlar : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack == false)
        {
            id = Request.QueryString["Yorumid"];
            islem = Request.QueryString["islem"];
        }

        SqlCommand komut = new SqlCommand("Select * From tbl_Yorumlar WHERE YorumOnay=1", bgl.baglanti());
        SqlDataReader reader = komut.ExecuteReader();
        DataList1.DataSource = reader;
        DataList1.DataBind();
        //Onaysız
        SqlCommand komut2 = new SqlCommand("Select * From tbl_Yorumlar WHERE YorumOnay=0", bgl.baglanti());
        SqlDataReader reader2 = komut2.ExecuteReader();
        DataList2.DataSource = reader2;
        DataList2.DataBind();
        
        if (islem == "sil")
        {
            SqlCommand cmdsil = new SqlCommand("Delete From Tbl_Yorumlar where yorumid=@p1", bgl.baglanti());
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
}