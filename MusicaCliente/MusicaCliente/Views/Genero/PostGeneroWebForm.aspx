<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.PostGeneroWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Crear Género</h1>
        ID:<asp:TextBox ID="txtIDGenero" runat="server" class="form-control w-25"></asp:TextBox>
        Nombre:<asp:TextBox ID="txtIDNombreGenero" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <asp:Button ID="btnCrearGenero" runat="server" OnClick="btnCrearGenero_Click" Text="Crear" class="btn btn-success"/>

    </div>
</asp:Content>
