<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetArtistaWebForm.aspx.cs" Inherits="MusicaCliente.Views.Artista.GetArtistaWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Buscar Artista</h1>
        <asp:GridView ID="GridView1" runat="server" CssClass="table w-75">
        </asp:GridView>
        ID:<asp:TextBox ID="txtBuscar" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnBuscar" runat="server" OnClick="btnBuscar_Click" CssClass="btn btn-primary" Text="Buscar" />
        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" class="btn btn-secondary" OnClick="btnLimpiar_Click" />
        <br />
        <br />

    </div>
</asp:Content>
