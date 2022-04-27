<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.PostAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 class="titulos">Crear Album</h1>
        <br />
        ID:<asp:TextBox ID="txtId" runat="server"></asp:TextBox>
        <br />
        Artista ID:<asp:TextBox ID="txtArtistaId" runat="server"></asp:TextBox>
        <br />
        Nombre:<asp:TextBox ID="txtNombre" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        <br />
        Fecha:<asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" />
    </div>
</asp:Content>
