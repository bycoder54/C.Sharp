<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.master" AutoEventWireup="true" CodeFile="ArizaOlustur.aspx.cs" Inherits="ArizaOlustur" %>

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

        <p>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="ArizaId" DataSourceID="SqlDataSource1" DefaultMode="Insert" OnItemInserted="FormView1_ItemInserted">
                <EditItemTemplate>
                    ArizaId:
                    <asp:Label ID="ArizaIdLabel1" runat="server" Text='<%# Eval("ArizaId") %>' />
                    <br />
                    MusteriId:
                    <asp:TextBox ID="MusteriIdTextBox" runat="server" Text='<%# Bind("MusteriId") %>' />
                    <br />
                    Aciklama:
                    <asp:TextBox ID="AciklamaTextBox" runat="server" Text='<%# Bind("Aciklama") %>' />
                    <br />
                    ArizaTarihi:
                    <asp:TextBox ID="ArizaTarihiTextBox" runat="server" Text='<%# Bind("ArizaTarihi") %>' />
                    <br />
                    Durumu:
                    <asp:TextBox ID="DurumuTextBox" runat="server" Text='<%# Bind("Durumu") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table align="center" border="1" width="500">
                        <tr>
                            <td align="center" colspan="2">
                                <h3>ARIZA KAYDI OLUŞTURMA EKRANI</h3>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6" width="150">Müşteri Id:</td>
                            <td class="auto-style6">
                                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="MusteriId" DataValueField="MusteriId" SelectedValue='<%# Bind("MusteriId") %>'>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bi_baglanti %>" DeleteCommand="DELETE FROM [Tbl_Musteriler] WHERE [MusteriId] = @MusteriId" SelectCommand="SELECT [MusteriId] FROM [Tbl_Musteriler] WHERE ([MusteriId] = @MusteriId)">
                                    <DeleteParameters>
                                        <asp:Parameter Name="MusteriId" Type="Int32" />
                                    </DeleteParameters>
                                    <SelectParameters>
                                        <asp:SessionParameter Name="MusteriId" SessionField="OturumKadi" Type="Int32" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6" width="150">Açıklama</td>
                            <td class="auto-style6">
                                <br />
                                <asp:TextBox ID="AciklamaTextBox" runat="server" Columns="50" Rows="10" Text='<%# Bind("Aciklama") %>' TextMode="MultiLine" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style5" width="150">&nbsp;</td>
                            <td class="auto-style5">
                                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Arıza Kaydı Oluştur" />
                                &nbsp;<br /></td>
                        </tr>
                    </table>
                </InsertItemTemplate>
                <ItemTemplate>
                    ArizaId:
                    <asp:Label ID="ArizaIdLabel" runat="server" Text='<%# Eval("ArizaId") %>' />
                    <br />
                    MusteriId:
                    <asp:Label ID="MusteriIdLabel" runat="server" Text='<%# Bind("MusteriId") %>' />
                    <br />
                    Aciklama:
                    <asp:Label ID="AciklamaLabel" runat="server" Text='<%# Bind("Aciklama") %>' />
                    <br />
                    ArizaTarihi:
                    <asp:Label ID="ArizaTarihiLabel" runat="server" Text='<%# Bind("ArizaTarihi") %>' />
                    <br />
                    Durumu:
                    <asp:Label ID="DurumuLabel" runat="server" Text='<%# Bind("Durumu") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Bi_baglanti %>" DeleteCommand="DELETE FROM [Tbl_Arizalar] WHERE [ArizaId] = @ArizaId" InsertCommand="INSERT INTO [Tbl_Arizalar] ([MusteriId], [Aciklama], [ArizaTarihi], [Durumu]) VALUES (@MusteriId, @Aciklama, @ArizaTarihi, @Durumu)" SelectCommand="SELECT * FROM [Tbl_Arizalar]" UpdateCommand="UPDATE [Tbl_Arizalar] SET [MusteriId] = @MusteriId, [Aciklama] = @Aciklama, [ArizaTarihi] = @ArizaTarihi, [Durumu] = @Durumu WHERE [ArizaId] = @ArizaId">
                <DeleteParameters>
                    <asp:Parameter Name="ArizaId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MusteriId" Type="Int32" />
                    <asp:Parameter Name="Aciklama" Type="String" />
                    <asp:Parameter Name="ArizaTarihi" Type="DateTime" />
                    <asp:Parameter Name="Durumu" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="MusteriId" Type="Int32" />
                    <asp:Parameter Name="Aciklama" Type="String" />
                    <asp:Parameter Name="ArizaTarihi" Type="DateTime" />
                    <asp:Parameter Name="Durumu" Type="Int32" />
                    <asp:Parameter Name="ArizaId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
</p>
        <p>
        <asp:Label ID="Label1" runat="server"></asp:Label>
</p>

        <hr />

        </asp:Content>

