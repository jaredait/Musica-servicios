<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.GetAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Buscar Álbum</h1>
        <asp:GridView ID="GVGet" runat="server" class="table w-75">
        </asp:GridView>
        ID:
        <br />
        <asp:TextBox ID="txtId" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnBuscar" runat="server" OnClick="Button1_Click" Text="Buscar" class="btn btn-primary"/>
        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" class="btn btn-secondary" OnClick="btnLimpiar_Click"/>    
    </div>
</asp:Content>

