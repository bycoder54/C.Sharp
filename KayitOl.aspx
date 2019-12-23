<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="KayitOl.aspx.cs" Inherits="KayitOl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style5 {
            height: 23px;
        }
        .newStyle1 {
            text-align: center;
            vertical-align: middle;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <hr />

    <asp:FormView ID="FormView1" runat="server" DataKeyNames="MusteriId" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted">
        <EditItemTemplate>
            MusteriId:
            <asp:Label ID="MusteriIdLabel1" runat="server" Text='<%# Eval("MusteriId") %>' />
            <br />
            MusteriAdSoyad:
            <asp:TextBox ID="MusteriAdSoyadTextBox" runat="server" Text='<%# Bind("MusteriAdSoyad") %>' />
            <br />
            MusteriTelefon:
            <asp:TextBox ID="MusteriTelefonTextBox" runat="server" Text='<%# Bind("MusteriTelefon") %>' />
            <br />
            MusteriEmail:
            <asp:TextBox ID="MusteriEmailTextBox" runat="server" Text='<%# Bind("MusteriEmail") %>' />
            <br />
            MusteriKadi:
            <asp:TextBox ID="MusteriKadiTextBox" runat="server" Text='<%# Bind("MusteriKadi") %>' />
            <br />
            MusteriSifre:
            <asp:TextBox ID="MusteriSifreTextBox" runat="server" Text='<%# Bind("MusteriSifre") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            <table align="center" border="1" width="500">
                <tr>
                    <td align="center" colspan="2">
                        <h3>SİSTEME KAYIT OLMA EKRANI</h3>
                    </td>
                </tr>
                <tr>
                    <td width="150">Ad Soyad</td>
                    <td>
                        <asp:TextBox ID="MusteriAdSoyadTextBox" runat="server" Text='<%# Bind("MusteriAdSoyad") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">Telefon Numaranız</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriTelefonTextBox" runat="server" Text='<%# Bind("MusteriTelefon") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">E-Mail</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriEmailTextBox" runat="server" Text='<%# Bind("MusteriEmail") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">Kullanıcı Adı</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriKadiTextBox" runat="server" Text='<%# Bind("MusteriKadi") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">Şifreniz</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="MusteriSifreTextBox" runat="server" Text='<%# Bind("MusteriSifre") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style5" width="150">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Kayıt Ol!" />
                    </td>
                </tr>
            </table>
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bi_baglanti %>" DeleteCommand="DELETE FROM [Tbl_Musteriler] WHERE [MusteriId] = @MusteriId" InsertCommand="INSERT INTO [Tbl_Musteriler] ([MusteriAdSoyad], [MusteriTelefon], [MusteriEmail], [MusteriKadi], [MusteriSifre]) VALUES (@MusteriAdSoyad, @MusteriTelefon, @MusteriEmail, @MusteriKadi, @MusteriSifre)" SelectCommand="SELECT * FROM [Tbl_Musteriler]" UpdateCommand="UPDATE [Tbl_Musteriler] SET [MusteriAdSoyad] = @MusteriAdSoyad, [MusteriTelefon] = @MusteriTelefon, [MusteriEmail] = @MusteriEmail, [MusteriKadi] = @MusteriKadi, [MusteriSifre] = @MusteriSifre WHERE [MusteriId] = @MusteriId">
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
    <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Giris.aspx" Visible="False">tıklayınız...</asp:HyperLink>

        <hr />

        </asp:Content>

