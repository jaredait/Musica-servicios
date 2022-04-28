<%@ Page Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="DeleteAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.DeleteAlbum" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Eliminar Álbum</h1>
        <asp:GridView ID="GridView1" runat="server" class="table w-75">
        </asp:GridView>
        ID:<asp:TextBox ID="txtId" runat="server" class="form-control w-25"></asp:TextBox>
        <br />
        <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" class="btn btn-primary"/>
    </div>

</asp:Content>
