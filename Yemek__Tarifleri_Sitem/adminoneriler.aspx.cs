using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class oneriler : System.Web.UI.Page
{
    sqlsinif bgl = new sqlsinif();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("Select * From Tbl_Tarifler WHERE tarifdurum=0", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();
        SqlCommand komut1 = new SqlCommand("Select * From Tbl_Tarifler WHERE tarifdurum=1", bgl.baglanti());
        SqlDataReader dr1 = komut1.ExecuteReader();
        DataList2.DataSource = dr1;
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