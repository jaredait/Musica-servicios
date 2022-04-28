<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.PostCancionWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Agregar Canción</h1>
        <br />
        ID:
    <asp:TextBox ID="TextBox1" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Álbum:<br />
        <asp:DropDownList ID="dropPostAlbum" runat="server" DataSourceID="PostCancionAlbumDataSource" DataTextField="ALB_NOMBRE" DataValueField="ALB_ID" CssClass="form-control w-25" >
        </asp:DropDownList>
        <asp:ObjectDataSource ID="PostCancionAlbumDataSource" runat="server" SelectMethod="cargarAlbumes" TypeName="MusicaCliente.Utilidades.Album_Datos"></asp:ObjectDataSource>
        <br />
        Género:
        <br />
        <asp:DropDownList ID="dropPostGenero" runat="server" DataSourceID="PostCancionGeneroDataSource" DataTextField="GEN_NOMBRE" DataValueField="GEN_ID" CssClass="form-control w-25">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="PostCancionGeneroDataSource" runat="server" SelectMethod="cargarGenero" TypeName="MusicaCliente.Utilidades.Genero.Genero_Datos" ></asp:ObjectDataSource>
        <br />
        Nombre:
    <asp:TextBox ID="TextBox4" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Duración:
    <asp:TextBox ID="TextBox5" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" class="btn btn-success"/>
        <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" CssClass="btn btn-secondary" />
        <br />
        <br />

    </div>

</asp:Content>
