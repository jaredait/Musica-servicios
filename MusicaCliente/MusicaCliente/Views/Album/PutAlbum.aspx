<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.PutAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <p class="titulos">Actualizar Album</p>
        <br />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
        ID:<asp:TextBox ID="txtId" runat="server"></asp:TextBox>
        <br />
        Artista ID:<asp:TextBox ID="txtArtistaId" runat="server"></asp:TextBox>
        <br />
        Nombre:<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
        <br />
        Fecha:<asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
    </div>
</asp:Content>
