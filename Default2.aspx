<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bi_baglanti %>" SelectCommand="SELECT FROM Tbl_Arizalar INNER JOIN Tbl_MusteriArizaDetay ON Tbl_Arizalar.ArizaId = Tbl_MusteriArizaDetay.ArizaId AND Tbl_Arizalar.MusteriId = Tbl_MusteriArizaDetay.MusteriId INNER JOIN Tbl_YetkiliArizaDetay ON Tbl_Arizalar.ArizaId = Tbl_YetkiliArizaDetay.ArizaId AND Tbl_MusteriArizaDetay.ArizaId = Tbl_YetkiliArizaDetay.ArizaId"></asp:SqlDataSource>
    </form>
</body>
</html>
