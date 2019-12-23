<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Bilgilerim.aspx.cs" Inherits="Bilgilerim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style4 {
            width: 400px;
        }
        .auto-style5 {
            height: 23px;
        }
        .auto-style6 {
            height: 26px;
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

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MusteriId" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdated="FormView1_ItemUpdated1">
        <EditItemTemplate>
            <table align="center" border="1" width="500">
                <tr>
                    <td align="center" colspan="2">
                        <h3>Müşteri Bilgileri</h3>
                    </td>
                </tr>
                <tr>
                    <td width="150">Ad Soyad</td>
                    <td>
                        <asp:TextBox ID="MusteriAdSoyadTextBox" runat="server" Text='<%# Bind("MusteriAdSoyad") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" width="150">Telefon Numarası</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="MusteriTelefonTextBox" runat="server" Text='<%# Bind("MusteriTelefon") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">E-Mail Adresi</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriEmailTextBox" runat="server" Text='<%# Bind("MusteriEmail") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">Müşteri Kullanıcı Adı</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriKadiTextBox" runat="server" Text='<%# Bind("MusteriKadi") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">Müşteri Şifresi</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriSifreTextBox" runat="server" Text='<%# Bind("MusteriSifre") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Güncelle" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table align="center" border="1" width="500">
                <tr>
                    <td align="center" colspan="2">
                        <h3>Müşteri Bilgileri</h3>
                    </td>
                </tr>
                <tr>
                    <td width="150">Ad Soyad</td>
                    <td>
                        <asp:TextBox ID="MusteriAdSoyadTextBox" runat="server" Text='<%# Bind("MusteriAdSoyad") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" width="150">Telefon Numarası</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="MusteriTelefonTextBox" runat="server" Text='<%# Bind("MusteriTelefon") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">E-Mail Adresi</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriEmailTextBox" runat="server" Text='<%# Bind("MusteriEmail") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">Müşteri Kullanıcı Adı</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriKadiTextBox" runat="server" Text='<%# Bind("MusteriKadi") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">Müşteri Şifresi</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriSifreTextBox" runat="server" Text='<%# Bind("MusteriSifre") %>' />
                    </td>
                </tr>
                <tr>
                    <td align="center" class="auto-style4" colspan="2">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Güncelle" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="İptal" />
                    </td>
                </tr>
            </table>
            <br />
            </InsertItemTemplate>
        <ItemTemplate>
            MusteriId:
            <asp:Label ID="MusteriIdLabel" runat="server" Text='<%# Eval("MusteriId") %>' />
            <br />
            MusteriAdSoyad:
            <asp:Label ID="MusteriAdSoyadLabel" runat="server" Text='<%# Bind("MusteriAdSoyad") %>' />
            <br />
            MusteriTelefon:
            <asp:Label ID="MusteriTelefonLabel" runat="server" Text='<%# Bind("MusteriTelefon") %>' />
            <br />
            MusteriEmail:
            <asp:Label ID="MusteriEmailLabel" runat="server" Text='<%# Bind("MusteriEmail") %>' />
            <br />
            MusteriKadi:
            <asp:Label ID="MusteriKadiLabel" runat="server" Text='<%# Bind("MusteriKadi") %>' />
            <br />
            MusteriSifre:
            <asp:Label ID="MusteriSifreLabel" runat="server" Text='<%# Bind("MusteriSifre") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bi_baglanti %>" DeleteCommand="DELETE FROM [Tbl_Musteriler] WHERE [MusteriId] = @MusteriId" InsertCommand="INSERT INTO [Tbl_Musteriler] ([MusteriAdSoyad], [MusteriTelefon], [MusteriEmail], [MusteriKadi], [MusteriSifre]) VALUES (@MusteriAdSoyad, @MusteriTelefon, @MusteriEmail, @MusteriKadi, @MusteriSifre)" SelectCommand="SELECT * FROM [Tbl_Musteriler] WHERE ([MusteriId] = @MusteriId)" UpdateCommand="UPDATE [Tbl_Musteriler] SET [MusteriAdSoyad] = @MusteriAdSoyad, [MusteriTelefon] = @MusteriTelefon, [MusteriEmail] = @MusteriEmail, [MusteriKadi] = @MusteriKadi, [MusteriSifre] = @MusteriSifre WHERE [MusteriId] = @MusteriId">
        <DeleteParameters>
            <asp:Parameter Name="MusteriId" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MusteriAdSoyad" Type="String" />
            <asp:Parameter Name="MusteriTelefon" Type="String" />
            <asp:Parameter Name="MusteriEmail" Type="String" />
            <asp:Parameter Name="MusteriKadi" Type="String" />
            <asp:Parameter Name="MusteriSifre" Type="String" />
        </InsertParameters>
        <SelectParameters>
            <asp:SessionParameter Name="MusteriId" SessionField="OturumKadi" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="MusteriAdSoyad" Type="String" />
            <asp:Parameter Name="MusteriTelefon" Type="String" />
            <asp:Parameter Name="MusteriEmail" Type="String" />
            <asp:Parameter Name="MusteriKadi" Type="String" />
            <asp:Parameter Name="MusteriSifre" Type="String" />
            <asp:Parameter Name="MusteriId" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:Label ID="Label1" runat="server"></asp:Label>

        <hr />

        </asp:Content>

