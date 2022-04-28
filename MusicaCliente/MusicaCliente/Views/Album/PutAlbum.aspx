<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.PutAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Actualizar Álbum</h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" class="table w-75">
        </asp:GridView>
        ID:<asp:TextBox ID="txtId" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Artista:<br />
        <asp:DropDownList ID="dropPutArtista" runat="server" DataSourceID="PutAlbumArtistaDataSource" DataTextField="ART_NOMBRE" DataValueField="ART_ID" CssClass="form-control w-25">
        </asp:DropDownList>
        <asp:ObjectDataSource ID="PutAlbumArtistaDataSource" runat="server" SelectMethod="cargarArtista" TypeName="MusicaCliente.Utilidades.Artista.Artista_Datos"></asp:ObjectDataSource>
        <br />
        Nombre:<asp:TextBox ID="txtNombre" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Fecha:<asp:Calendar ID="calFecha" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" class="btn btn-primary"/>
        <asp:Button ID="btnLimpiar" runat="server" OnClick="Button1_Click" Text="Button" CssClass="btn btn-secondary"/>
        <br />
    </div>
</asp:Content>
