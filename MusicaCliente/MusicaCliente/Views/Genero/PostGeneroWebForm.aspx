<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.PostGeneroWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Crear Género</h1>
        ID:<asp:TextBox ID="txtIDGenero" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Nombre:<asp:TextBox ID="txtIDNombreGenero" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnCrearGenero" runat="server" OnClick="btnCrearGenero_Click" Text="Crear" class="btn btn-success"/>

        <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" CssClass="btn btn-secondary" />
        <br />
        <br />


    </div>
</asp:Content>
