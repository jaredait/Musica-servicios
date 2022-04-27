<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="DeleteArtistaWebForm.aspx.cs" Inherits="MusicaCliente.Views.Artista.DeleteArtistaWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        Eliminar Artista<asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
        ID:<asp:TextBox ID="txtID" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" />
</asp:Content>
