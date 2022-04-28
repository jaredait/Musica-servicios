<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="DeleteCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.DeleteCancionWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Eliminar Canción</h1>
        <asp:GridView ID="GVGet" runat="server" class="table w-75"></asp:GridView>
        ID:<asp:TextBox ID="txtIdEliminar" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" class="btn btn-danger"/>
        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" class="btn btn-secondary" OnClick="btnLimpiar_Click"/>    
        <br />
        <br />

    </div>
</asp:Content>
