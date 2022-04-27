<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostArtistaWebForm.aspx.cs" Inherits="MusicaCliente.Views.Artista.PostArtistaWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        CREAR ARTISTA</p>
    <p>
        Id:<asp:TextBox ID="txtId" runat="server"></asp:TextBox>
    </p>
    <p>
        Nombre:<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
    </p>
    <p>
        Email:<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
    </p>
    <p>
        Fecha Creación:<asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
    </p>
    <p>
        Cantidad Integrantes:<asp:TextBox ID="txtCantIntegrantes" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="btnCrearArtista" runat="server" OnClick="btnCrearArtista_Click" Text="Crear" />
</asp:Content>
