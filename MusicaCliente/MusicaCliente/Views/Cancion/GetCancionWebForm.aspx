<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.GetCancionWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Ver Canciones</h1>

    <asp:Button ID="BtnLimpiar" runat="server" OnClick="BtnLimpiar_Click" Text="Limpiar" style="height: 26px" />
    <asp:Button ID="BtnBuscar" runat="server" OnClick="Button1_Click" Text="Buscar" style="height: 26px" />
    <br />    
    <asp:GridView ID="GVGet" runat="server"></asp:GridView>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </asp:Content>
