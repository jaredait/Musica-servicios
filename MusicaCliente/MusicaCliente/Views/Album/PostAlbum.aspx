<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.PostAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Agregar Álbum</h1>
        <br />
        ID:<asp:TextBox ID="txtId" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Artista ID:<asp:TextBox ID="txtArtistaId" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Nombre:<asp:TextBox ID="txtNombre" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Fecha:<br />
        <asp:Calendar ID="calFechaPost" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" class="btn btn-primary"/>
    </div>
</asp:Content>
