<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="DeleteArtistaWebForm.aspx.cs" Inherits="MusicaCliente.Views.Artista.DeleteArtistaWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Eliminar Artista</h1>
        <asp:GridView ID="GridView1" runat="server" class="table w-75">
        </asp:GridView>
        ID:<asp:TextBox ID="txtID" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnEliminar" runat="server" OnClick="btnEliminar_Click" Text="Eliminar" class="btn btn-danger"/>
        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" class="btn btn-secondary" OnClick="btnLimpiar_Click"/>    
    </div>

</asp:Content>
