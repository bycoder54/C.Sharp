using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ArizaOlustur : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["OturumYetkisi"] != "musteri")
        {
            Response.Redirect("~/Default.aspx");
        }
    }
    

    protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
    {
        Label1.Text = "Arıza kaydınız başarıyla oluşturulmuştur.Üst menüden kayıtlarınıza ulaşabilirsiniz";

    }
}