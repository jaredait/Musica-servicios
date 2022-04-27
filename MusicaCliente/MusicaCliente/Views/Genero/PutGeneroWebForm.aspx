<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.PutGeneroWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        ACTUALIZAR GENERO</p>
    <asp:GridView ID="GVActualizarGen" runat="server">
    </asp:GridView>
    <p>ID:<asp:TextBox ID="txtIdGenero" runat="server"></asp:TextBox>
    </p>
    <p>Nombre:<asp:TextBox ID="txtNombreGenero" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="btnActualizarGenero" runat="server" OnClick="btnActualizarGenero_Click" Text="Actualizar" />
</asp:Content>
