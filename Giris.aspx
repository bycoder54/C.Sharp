<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="Giris.aspx.cs" Inherits="Giris" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style6 {
            height: 26px;
        }
        .auto-style5 {
            height: 23px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

        <hr />

    <table align="center" border="1" width="500" __designer:mapid="279">
        <tr __designer:mapid="27a">
            <td align="center" colspan="2" __designer:mapid="27b">
                <h3 __designer:mapid="27c">SİSTEME GİRİŞ EKRANI</h3>
            </td>
        </tr>
        <tr __designer:mapid="27d">
            <td width="150" __designer:mapid="27e">Kullanıcı Adı</td>
            <td __designer:mapid="27f">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="281">
            <td class="auto-style6" width="150" __designer:mapid="282">Şifre</td>
            <td class="auto-style6" __designer:mapid="283">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr __designer:mapid="285">
            <td class="auto-style5" width="150" __designer:mapid="286">Yetki</td>
            <td class="auto-style5" __designer:mapid="287">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="musteri">Müşteri</asp:ListItem>
                    <asp:ListItem Value="yetkili">Yetkili</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr __designer:mapid="289">
            <td class="auto-style5" width="150" __designer:mapid="28a">&nbsp;</td>
            <td class="auto-style5" __designer:mapid="28b">
                <asp:Button ID="Button1" runat="server" Text="Giriş" OnClick="Button1_Click" />
                <br />
                <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
        </tr>
        <tr __designer:mapid="289">
            <td class="auto-style5" width="150" __designer:mapid="28a">&nbsp;</td>
            <td class="auto-style5" __designer:mapid="28b">
                <asp:Label ID="Label2" runat="server" Text="Sisteme kayıt olmak için "></asp:Label>
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/KayitOl.aspx">tıklayınız...</asp:HyperLink>
            </td>
        </tr>
    </table>

        <hr />

        </asp:Content>

