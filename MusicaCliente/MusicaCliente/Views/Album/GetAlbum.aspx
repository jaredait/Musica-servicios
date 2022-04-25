<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GetAlbum.aspx.cs" Inherits="MusicaCliente.Views.Album.GetAlbum" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../../wwwroot/css/styles.css" rel="stylesheet" />
    <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body class="accordion-body">
    <form id="form1" runat="server">
        <div>
            <p class="titulos">Buscar Album</p>
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
