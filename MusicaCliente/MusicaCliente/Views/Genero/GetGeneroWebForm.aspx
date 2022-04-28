<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.GetGeneroWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Buscar Género</h1>
        <asp:GridView ID="GVGenero" runat="server" CssClass="table w-75">
        </asp:GridView>
        ID:
        <asp:TextBox ID="txtBuscarGenero" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnBuscarGenero" runat="server" OnClick="btnBuscarGenero_Click" Text="Buscar" class="btn btn-primary" />
        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" class="btn btn-secondary" OnClick="btnLimpiar_Click" />

    </div>
</asp:Content>
