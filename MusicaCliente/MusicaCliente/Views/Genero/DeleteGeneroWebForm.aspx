<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="DeleteGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.DeleteGeneroWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Eliminar Género</h1>
        <asp:GridView ID="GridView1" runat="server" CssClass="table w-75">
        </asp:GridView>
        ID:<asp:TextBox ID="txtEliminarGenero" runat="server" OnTextChanged="TextBox1_TextChanged" CssClass="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnEliminarGenero" runat="server" OnClick="btnEliminarGenero_Click" Text="Eliminar" class="btn btn-danger"/>
        <asp:Button ID="btnLimpiar" runat="server" Text="Limpiar" class="btn btn-secondary" OnClick="btnLimpiar_Click"/>
        <br />
        <br />


    </div>
</asp:Content>
