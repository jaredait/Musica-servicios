<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutGeneroWebForm.aspx.cs" Inherits="MusicaCliente.Views.Genero.PutGeneroWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Actualizar Género</h1>
        <asp:GridView ID="GVActualizarGen" runat="server" CssClass="table w-75">
        </asp:GridView>
        ID:
        <br />
        <asp:TextBox ID="txtIdGenero" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        Nombre:
        <br /><asp:TextBox ID="txtNombreGenero" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnActualizarGenero" runat="server" OnClick="btnActualizarGenero_Click" Text="Actualizar" class="btn btn-primary"/>
    </div>
</asp:Content>
