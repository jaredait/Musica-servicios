<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="DeleteGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.DeleteGeneroWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        ELIMINAR GENERO<asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
        ID:<asp:TextBox ID="txtEliminarGenero" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
    </p>
    <asp:Button ID="btnEliminarGenero" runat="server" OnClick="btnEliminarGenero_Click" Text="Eliminar" />
</asp:Content>
