<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PostGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.PostGeneroWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        CREAR CANCION</p>
    <p>
        ID:<asp:TextBox ID="txtIDGenero" runat="server"></asp:TextBox>
    </p>
    <p>
        Nombre:<asp:TextBox ID="txtIDNombreGenero" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="btnCrearGenero" runat="server" OnClick="btnCrearGenero_Click" Text="Crear" />
</asp:Content>
