<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PostAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.PostAlbum" %>

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
            <p class="titulos">Crear Album</p><br />
            ID:
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <br />
            Artista ID:<asp:TextBox ID="txtArtistaId" runat="server"></asp:TextBox>
            <br />
            Nombre:<asp:TextBox ID="txtNombre" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
            <br />
            Fecha:
            <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnCrear" runat="server" Text="Crear" OnClick="btnCrear_Click" />
        </div>
    </form>
</body>
</html>
