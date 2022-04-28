<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="GetCancion1WebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.GetCancion1WebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Buscar Canción</h1>
        ID:<asp:TextBox ID="txtBuscarCancion" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnBuscarCancion" runat="server" Text="Buscar" OnClick="btnBuscarCancion_Click" class="btn btn-primary"/>
        <asp:Button ID="btnLimpiarGet" runat="server" Text="Limpiar" OnClick="btnLimpiarGet_Click" class="btn btn-secondary"/>
        <br />
        <asp:GridView ID="GVBuscarCancion" runat="server" class="table w-75">
        </asp:GridView>
        <br />
    </div>

</asp:Content>
