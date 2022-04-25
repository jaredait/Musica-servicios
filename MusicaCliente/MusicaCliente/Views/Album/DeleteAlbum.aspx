<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeleteAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.DeleteAlbum" %>

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
           <p class="titulos">Eliminar Album</p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            ID:
            <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        </div>
    </form>
</body>
</html>
