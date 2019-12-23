using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Drawing;

public partial class Yetkili_ArızaKayıtları : System.Web.UI.Page
{
    SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["Bi_baglanti"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["OturumYetkisi"] != "musteri")
        {
            Response.Redirect("~/Default.aspx");
        }
    }
  /*  protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

        txt_arizadetayid.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text.ToString());
        txt_arizaid.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[3].Text.ToString());
       // txt_musteriid.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[4].Text.ToString());
        txt_musteritext.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[5].Text.ToString());
        txt_yetkiliid.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[6].Text.ToString());
        txt_yetkilitext.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[7].Text.ToString());

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                row.BackColor = ColorTranslator.FromHtml("Pink");
            }
            else
            {
                row.BackColor = ColorTranslator.FromHtml("White");
            }
        }
    }*/
    protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
    {
      //  txt_arizadetayid.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text.ToString());
        txt_arizaid.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[2].Text.ToString());
        // txt_musteriid.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[4].Text.ToString());
        txt_musteritext.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[3].Text.ToString());
      //  txt_yetkiliid.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[6].Text.ToString());
       // txt_yetkilitext.Text = HttpUtility.HtmlDecode(GridView1.SelectedRow.Cells[7].Text.ToString());

        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowIndex == GridView1.SelectedIndex)
            {
                row.BackColor = ColorTranslator.FromHtml("Pink");
            }
            else
            {
                row.BackColor = ColorTranslator.FromHtml("White");
            }
        }
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {
     txt_arizadetayid.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells[2].Text.ToString());
        txt_arizaid.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells[3].Text.ToString());
        // txt_musteriid.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells[4].Text.ToString());
      //  txt_musteritext.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells[4].Text.ToString());
        //  txt_yetkiliid.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells[6].Text.ToString());
        // txt_yetkilitext.Text = HttpUtility.HtmlDecode(GridView2.SelectedRow.Cells[7].Text.ToString());

        foreach (GridViewRow row in GridView2.Rows)
        {
            if (row.RowIndex == GridView2.SelectedIndex)
            {
                row.BackColor = ColorTranslator.FromHtml("Pink");
            }
            else
            {
                row.BackColor = ColorTranslator.FromHtml("White");
            }
        }
    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(WebConfigurationManager.ConnectionStrings["Bi_baglanti"].ConnectionString);
        baglanti.Open();
      /*  try
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Tbl_DetayliAriza (ArizaDetayId,ArizaId,MusteriId, MusteriText) VALUES (@ArizaDetayId,@ArizaId, @MusteriId, @MusteriText)", baglanti);
             //   SqlCommand cmd = new SqlCommand("UPDATE Tbl_DetayliAriza  SET (ArizaId=@ArizaId,MusteriId=@MusteriId=, MusteriText=@MusteriText,YetkiliId=@YetkiliId,YetkiliText=@YetkiliText)", baglanti);
             // cmd.Parameters.AddWithValue("@ArizaDetayId",txt_arizadetayid.Text);
                cmd.Parameters.AddWithValue("@ArizaId",txt_arizaid.Text);
                cmd.Parameters.AddWithValue("@MusteriId", Session["OturumKadi"]);
                cmd.Parameters.AddWithValue("@MusteriText", txt_musteritext.Text);
                cmd.ExecuteNonQuery();
                baglanti.Close();
                Lbl_Mesaj.Text = "Kayıt Eklendi";
                GridView1.DataBind();
            }
            catch
            {
               Lbl_Mesaj.Text = "Hata oluştu, kaydedilemedi.";
            }
            finally
            {
 
                baglanti.Close();
            }*/
        try
        {
            SqlCommand cmd = new SqlCommand("INSERT INTO Tbl_DetayliAriza (ArizaId,MusteriId, MusteriText) VALUES (@ArizaId, @MusteriId, @MusteriText)", baglanti);
            //   SqlCommand cmd = new SqlCommand("UPDATE Tbl_DetayliAriza  SET (ArizaId=@ArizaId,MusteriId=@MusteriId=, MusteriText=@MusteriText,YetkiliId=@YetkiliId,YetkiliText=@YetkiliText)", baglanti);
           // cmd.Parameters.AddWithValue("@ArizaDetayId",txt_arizadetayid.Text);
            cmd.Parameters.AddWithValue("@ArizaId", txt_arizaid.Text);
            cmd.Parameters.AddWithValue("@MusteriId", Session["OturumKadi"]);
            cmd.Parameters.AddWithValue("@MusteriText", txt_musteritext.Text);
            cmd.ExecuteNonQuery();
            baglanti.Close();
            GridView2.DataBind();

            Lbl_Mesaj.Text = "Cevap iletildi.";
        }
        catch(Exception)
        {
           
        }
        finally
        {

            baglanti.Close();
        }
    }
    
}

    