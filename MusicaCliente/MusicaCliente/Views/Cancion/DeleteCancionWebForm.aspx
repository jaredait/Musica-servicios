<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="DeleteCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.DeleteCancionWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Eliminar Canción</h1>
        <asp:GridView ID="GVGet" runat="server" class="table w-75"></asp:GridView>
        <br />
        ID:<asp:TextBox ID="txtIdEliminar" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <asp:Button ID="btnEliminar" runat="server" Text="Button" OnClick="btnEliminar_Click" class="btn btn-primary"/>
    </div>
</asp:Content>
