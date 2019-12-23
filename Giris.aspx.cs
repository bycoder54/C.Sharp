using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Giris : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["Bi_baglanti"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedValue == "musteri")
        {
            musterigirisi();
        }
        else if  (DropDownList1.SelectedValue == "yetkili")
        {
            yetkiligirisi();
        }
        else 
	    {
            elemangirisi();
    	}
    }
        protected void musterigirisi()
    {
        SqlCommand komut = new SqlCommand("select * from Tbl_Musteriler Where [MusteriKadi]=@kadi and [MusteriSifre]=@sifre", baglanti);
        komut.Parameters.AddWithValue("@kadi", TextBox1.Text);
        komut.Parameters.AddWithValue("@sifre", TextBox2.Text);
        baglanti.Open();
        SqlDataReader satir = komut.ExecuteReader();
        if (satir.Read())
        {
            Session["OturumYetkisi"] = "musteri";
            Session["OturumKadi"] = satir["MusteriId"].ToString();
            Response.Redirect("~/Bilgilerim.aspx");
        }
        else
        {
            Label1.Text = "Hatalı kulllanıcı adı veya şifre,lütfen tekrar deneyin.".ToString();
        }
        komut.Dispose();
        baglanti.Close();
    }
    protected void yetkiligirisi()
    {
        SqlCommand komut = new SqlCommand("select * from Tbl_Yetkililer Where [YetkiliKadi]=@kadi and [YetkiliSifre]=@sifre", baglanti);
        komut.Parameters.AddWithValue("@kadi", TextBox1.Text);
        komut.Parameters.AddWithValue("@sifre", TextBox2.Text);
        baglanti.Open();
        SqlDataReader satir = komut.ExecuteReader();
        if (satir.Read())
        {
            Session["OturumYetkisi"] = "yetkili";
            Session["OturumKadi"] = satir["YetkiliId"].ToString();
            Response.Redirect("~/Yetkili/Bilgilerim.aspx");
         
        }
        else
        {
            Label1.Text = "Hatalı kulllanıcı adı veya şifre,lütfen tekrar deneyin.".ToString();
        }
        komut.Dispose();
        baglanti.Close();
    }
    protected void elemangirisi()
    {
        SqlCommand komut = new SqlCommand("select * from Tbl_ServisElemanlar Where [ElemanKadi]=@kadi and [ElemanSifre]=@sifre", baglanti);
        komut.Parameters.AddWithValue("@kadi", TextBox1.Text);
        komut.Parameters.AddWithValue("@sifre", TextBox2.Text);
        baglanti.Open();
        SqlDataReader satir = komut.ExecuteReader();
        if (satir.Read())
        {
            Session["OturumYetkisi"] = "eleman";
            Session["OturumKadi"] = satir["ElemanId"].ToString();
            Response.Redirect("~/ServisElemani/Bilgilerim.aspx");
         
        }
        else
        {
            Label1.Text = "Hatalı Kullanıcı Adı veya Şifre".ToString();
        }
        komut.Dispose();
        baglanti.Close();
    }
    }