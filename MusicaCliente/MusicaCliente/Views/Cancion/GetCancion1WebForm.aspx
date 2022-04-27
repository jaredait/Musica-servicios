<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetCancion1WebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.GetCancion1WebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Buscar Canción</h1>
    ID:<asp:TextBox ID="txtBuscarCancion" runat="server"></asp:TextBox>
    <asp:Button ID="btnBuscarCancion" runat="server" Text="Button" OnClick="btnBuscarCancion_Click" />
    <asp:GridView ID="GVBuscarCancion" runat="server">
    </asp:GridView>
    <br />

</asp:Content>
