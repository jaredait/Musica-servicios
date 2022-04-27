<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="DeleteAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.DeleteAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Eliminar Álbum</h1>
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <br />
    ID:<asp:TextBox ID="txtId" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
</asp:Content>
