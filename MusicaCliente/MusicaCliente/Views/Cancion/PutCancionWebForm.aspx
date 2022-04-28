<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.PutCancionWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Actualizar Canción</h1>
        <br />
        <asp:GridView ID="GVPut" runat="server" class="table w-75">
        </asp:GridView>
        ID:
    <asp:TextBox ID="txtIdActualizar" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Álbum ID:
        <br />
        <asp:DropDownList ID="dropAlbumPut" runat="server" DataSourceID="PutCancionAlbumDataSorce" DataTextField="ALB_NOMBRE" DataValueField="ALB_ID" CssClass="form-control w-25">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="PutCancionAlbumDataSorce" runat="server" SelectMethod="cargarAlbumes" TypeName="MusicaCliente.Utilidades.Album_Datos"></asp:ObjectDataSource>
        <br />
        Género ID:
        <br />
        <asp:DropDownList ID="dropGeneroPut" runat="server" DataSourceID="PutCancionGeneroDataSource" DataTextField="GEN_NOMBRE" DataValueField="GEN_ID" CssClass="form-control w-25">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="PutCancionGeneroDataSource" runat="server" SelectMethod="cargarGenero" TypeName="MusicaCliente.Utilidades.Genero.Genero_Datos"></asp:ObjectDataSource>
        <br />
        Nombre:
    <asp:TextBox ID="txtNombreActualizar" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Duración:
    <asp:TextBox ID="txtDuracionActualizar" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" class="btn btn-primary"/>
        <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" CssClass="btn btn-secondary" />
        <br />
        <br />

    </div>
</asp:Content>
