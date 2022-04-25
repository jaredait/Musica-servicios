﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PutAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.PutAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../wwwroot/css/styles.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p class="titulos">Actualizar Album</p><br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            ID:
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <br />
            Artista ID:<asp:TextBox ID="txtArtistaId" runat="server"></asp:TextBox>
            <br />
            Nombre:<asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
            <br />
            Fecha:
            <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" OnClick="btnActualizar_Click" />
        </div>
    </form>
</body>
</html>