<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.PostCancionWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Agregar Canción</h1>
    <br />
    ID:
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br />
    Álbum ID:
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br />
    Género ID:
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br />
    Nombre:
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br />
    Duración:
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" />
</asp:Content>
