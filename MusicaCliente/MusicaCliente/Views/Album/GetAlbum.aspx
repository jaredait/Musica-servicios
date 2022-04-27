<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.GetAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Buscar Álbum</h1>
        <asp:GridView ID="GVGet" runat="server" class="table w-75">
        </asp:GridView>
        <asp:TextBox ID="txtId" runat="server" class="form-control w-25"></asp:TextBox>
        <asp:Button ID="btnBuscar" runat="server" OnClick="Button1_Click" Text="Button" class="btn btn-primary"/>
    </div>
</asp:Content>

