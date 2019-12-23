<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="ArizaKayitlari.aspx.cs" Inherits="Yetkili_ArızaKayıtları" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            width: 500px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Bilgilerim.aspx">Bilgilerim</asp:HyperLink>
&nbsp;
    <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/ArizaOlustur.aspx">Arıza Kaydı Oluştur</asp:HyperLink>
&nbsp;
    <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/ArizaKayitlari.aspx">Arıza Kayıtları</asp:HyperLink>
&nbsp;
    <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/OturumuKapat.aspx">Çıkış</asp:HyperLink>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <hr />

        ARIZA KAYITLARIM<br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ArizaId" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ArizaId" HeaderText="Arıza Numarası" InsertVisible="False" ReadOnly="True" SortExpression="ArizaId" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MusteriId" HeaderText="Müşteri Id" SortExpression="MusteriId" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Aciklama" HeaderText="Arıza Açıklaması" SortExpression="Aciklama" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ArizaTarihi" HeaderText="Arıza Tarihi" SortExpression="ArizaTarihi" NullDisplayText="01.01.2019" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="Durumu" HeaderText="Durumu" SortExpression="Durumu" Visible="False" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bi_baglanti %>" DeleteCommand="DELETE FROM [Tbl_Arizalar] WHERE [ArizaId] = @ArizaId" InsertCommand="INSERT INTO [Tbl_Arizalar] ([MusteriId], [Aciklama], [ArizaTarihi], [Durumu]) VALUES (@MusteriId, @Aciklama, @ArizaTarihi, @Durumu)" SelectCommand="SELECT * FROM [Tbl_Arizalar] WHERE ([MusteriId] = @MusteriId)" UpdateCommand="UPDATE [Tbl_Arizalar] SET [MusteriId] = @MusteriId, [Aciklama] = @Aciklama, [ArizaTarihi] = @ArizaTarihi, [Durumu] = @Durumu WHERE [ArizaId] = @ArizaId">
            <DeleteParameters>
                <asp:Parameter Name="ArizaId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MusteriId" Type="Int32" />
                <asp:Parameter Name="Aciklama" Type="String" />
                <asp:Parameter Name="ArizaTarihi" Type="DateTime" />
                <asp:Parameter Name="Durumu" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="MusteriId" SessionField="OturumKadi" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="MusteriId" Type="Int32" />
                <asp:Parameter Name="Aciklama" Type="String" />
                <asp:Parameter Name="ArizaTarihi" Type="DateTime" />
                <asp:Parameter Name="Durumu" Type="Int32" />
                <asp:Parameter Name="ArizaId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <hr />

        YETKİLİ GÖRÜŞMELERİ<br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="ArizaDetayId" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="True" />
                <asp:BoundField DataField="ArizaDetayId" HeaderText="Arıza Detay Numarası" InsertVisible="False" ReadOnly="True" SortExpression="ArizaDetayId" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="ArizaId" HeaderText="Arıza Numarası" SortExpression="ArizaId" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MusteriId" HeaderText="Müşteri Id" SortExpression="MusteriId" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="MusteriText" HeaderText="Müşteri İletileri" SortExpression="MusteriText" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="YetkiliId" HeaderText="Yetkili Id" SortExpression="YetkiliId" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
                <asp:BoundField DataField="YetkiliText" HeaderText="Yetkili İletileri" SortExpression="YetkiliText" ReadOnly="True" >
                <ItemStyle HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Bi_baglanti %>" SelectCommand="SELECT * FROM [Tbl_DetayliAriza] WHERE ([MusteriId] = @MusteriId)" DeleteCommand="DELETE FROM [Tbl_DetayliAriza] WHERE [ArizaDetayId] = @ArizaDetayId" InsertCommand="INSERT INTO [Tbl_DetayliAriza] ([ArizaId], [MusteriId], [MusteriText], [YetkiliId], [YetkiliText]) VALUES (@ArizaId, @MusteriId, @MusteriText, @YetkiliId, @YetkiliText)" UpdateCommand="UPDATE [Tbl_DetayliAriza] SET [ArizaId] = @ArizaId, [MusteriId] = @MusteriId, [MusteriText] = @MusteriText, [YetkiliId] = @YetkiliId, [YetkiliText] = @YetkiliText WHERE [ArizaDetayId] = @ArizaDetayId">
            <DeleteParameters>
                <asp:Parameter Name="ArizaDetayId" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ArizaId" Type="Int32" />
                <asp:Parameter Name="MusteriId" Type="Int32" />
                <asp:Parameter Name="MusteriText" Type="String" />
                <asp:Parameter Name="YetkiliId" Type="Int32" />
                <asp:Parameter Name="YetkiliText" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="MusteriId" SessionField="OturumKadi" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ArizaId" Type="Int32" />
                <asp:Parameter Name="MusteriId" Type="Int32" />
                <asp:Parameter Name="MusteriText" Type="String" />
                <asp:Parameter Name="YetkiliId" Type="Int32" />
                <asp:Parameter Name="YetkiliText" Type="String" />
                <asp:Parameter Name="ArizaDetayId" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
        <hr />

        <br />
        <asp:Label ID="Lbl_Mesaj" runat="server" Font-Bold="True" ForeColor="#990033"></asp:Label>
        <br />
        <br />
        <table class="auto-style5">
            <tr>
                <td>Arıza Detay Numarası</td>
                <td>
                    <asp:TextBox ID="txt_arizadetayid" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Arıza Numarası</td>
                <td>
                    <asp:TextBox ID="txt_arizaid" runat="server" ReadOnly="True"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>Müşteri Id </td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="MusteriId" DataValueField="MusteriId">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Bi_baglanti %>" SelectCommand="SELECT MusteriId FROM Tbl_Musteriler WHERE (MusteriId = @MusteriId)">
                        <SelectParameters>
                            <asp:SessionParameter Name="MusteriId" SessionField="OturumKadi" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>Müşteri İletiler</td>
                <td>
                    <asp:TextBox ID="txt_musteritext" runat="server" Columns="50" Rows="10" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cevapla" />
                </td>
            </tr>
        </table>
        <br />
    
        <br />
    
        <hr />

        </asp:Content>

