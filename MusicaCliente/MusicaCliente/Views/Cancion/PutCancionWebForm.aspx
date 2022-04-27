<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.PutCancionWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Actualizar Canción</h1>
    <br />
    <asp:GridView ID="GVPut" runat="server">
    </asp:GridView>
    ID:
    <asp:TextBox ID="txtIdActualizar" runat="server"></asp:TextBox>
    <br />
    Álbum ID:
    <asp:TextBox ID="txtAlbumIdActualizar" runat="server"></asp:TextBox>
    <br />
    Género ID:
    <asp:TextBox ID="txtGeneroIdActualizar" runat="server"></asp:TextBox>
    <br />
    Nombre:
    <asp:TextBox ID="txtNombreActualizar" runat="server"></asp:TextBox>
    <br />
    Duración:
    <asp:TextBox ID="txtDuracionActualizar" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" />
</asp:Content>
