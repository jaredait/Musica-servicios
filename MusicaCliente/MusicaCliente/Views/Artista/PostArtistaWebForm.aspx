<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostArtistaWebForm.aspx.cs" Inherits="MusicaCliente.Views.Artista.PostArtistaWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
    <h1>Crear Artista</h1>
        ID:<asp:TextBox ID="txtId" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
    Nombre:<asp:TextBox ID="txtNombre" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
    Email:<asp:TextBox ID="txtEmail" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
    Fecha Creación:<br />
    <asp:Calendar ID="calPostArtista" runat="server"></asp:Calendar>
    <br />
    Cantidad Integrantes:<asp:TextBox ID="txtCantIntegrantes" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
    <asp:Button ID="btnCrearArtista" runat="server" OnClick="btnCrearArtista_Click" Text="Crear" class="btn btn-success"/>
</div>    
</asp:Content>
