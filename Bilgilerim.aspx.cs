using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Bilgilerim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["OturumYetkisi"] != "musteri")
        {
            Response.Redirect("~/Default.aspx");
        }
    }

    protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
    {
        Label1.Text = "Güncelleme işlemi başarıyla gerçekleşti";
    }
    protected void FormView1_ItemUpdated1(object sender, FormViewUpdatedEventArgs e)
    {
        Label1.Text = "Güncelleme işlemi başarıyla gerçekleşti";
    }
}
