<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.PutCancionWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="titulos">Actualizar Album</h1>
    <br />
    <asp:GridView ID="GVPut" runat="server">
    </asp:GridView>
    <br />

    ID:
    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
    <br />
    Álbum ID:
    <asp:TextBox ID="txtAlbumId" runat="server"></asp:TextBox>
    <br />
    Género ID:
    <asp:TextBox ID="txtGeneroId" runat="server"></asp:TextBox>
    <br />
    Nombre:
    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    <br />
    Duración:
    <asp:TextBox ID="txtDuracion" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
</asp:Content>
