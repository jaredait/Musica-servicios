<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutCancionWebForm.aspx.cs" Inherits="MusicaCliente.Views.Cancion.PutCancionWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Actualizar Canción</h1>
        <br />
        <asp:GridView ID="GVPut" runat="server" class="table w-75">
        </asp:GridView>
        ID:
    <asp:TextBox ID="txtIdActualizar" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Álbum ID:
    <asp:TextBox ID="txtAlbumIdActualizar" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Género ID:
    <asp:TextBox ID="txtGeneroIdActualizar" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Nombre:
    <asp:TextBox ID="txtNombreActualizar" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Duración:
    <asp:TextBox ID="txtDuracionActualizar" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" OnClick="btnGuardar_Click" class="btn btn-primary"/>
    </div>
</asp:Content>
