<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.PutAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Actualizar Álbum</h1>
        <br />
        <asp:GridView ID="GridView1" runat="server" class="table w-75">
        </asp:GridView>
        ID:<asp:TextBox ID="txtId" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Artista ID:<asp:TextBox ID="txtArtistaId" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Nombre:<asp:TextBox ID="txtNombre" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        Fecha:<asp:Calendar ID="calFecha" runat="server"></asp:Calendar>
        <br />
        <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" class="btn btn-primary"/>
        <br />
    </div>
</asp:Content>
