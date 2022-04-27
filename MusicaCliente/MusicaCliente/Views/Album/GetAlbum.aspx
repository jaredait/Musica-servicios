<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.GetAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Buscar Álbum</h1>
        <asp:GridView ID="GVGet" runat="server">
        </asp:GridView>
        <asp:TextBox ID="txtId" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" OnClick="Button1_Click" Text="Button" />
    </div>
</asp:Content>

