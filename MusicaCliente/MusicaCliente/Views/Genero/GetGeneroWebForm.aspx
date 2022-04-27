<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.GetGeneroWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        BUSCAR GENERO</p>
    <asp:GridView ID="GVGenero" runat="server">
    </asp:GridView>
    <br />
    <asp:TextBox ID="txtBuscarGenero" runat="server"></asp:TextBox>
    <asp:Button ID="btnBuscarGenero" runat="server" OnClick="btnBuscarGenero_Click" Text="Buscar" />
</asp:Content>
