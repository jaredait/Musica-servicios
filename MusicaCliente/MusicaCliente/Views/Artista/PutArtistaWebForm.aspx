<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutArtistaWebForm.aspx.cs" Inherits="MusicaCliente.Views.Artista.PutArtistaWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        ACTUALIZAR ARTISTA<asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </p>
    <p>
        Id:<asp:TextBox ID="txtIdArtista" runat="server"></asp:TextBox>
    </p>
    <p>
        Nombre:<asp:TextBox ID="txtNombreArt" runat="server"></asp:TextBox>
    </p>
    <p>
        Email:<asp:TextBox ID="txtEmailArt" runat="server"></asp:TextBox>
    </p>
    <p>
        Fecha de Creación:<asp:TextBox ID="txtFechaArt" runat="server"></asp:TextBox>
    </p>
    <p>
        Cantidad Integrantes<asp:TextBox ID="txtIntegrantesArt" runat="server"></asp:TextBox>
    </p>
    <asp:Button ID="brnActualizarArt" runat="server" OnClick="brnActualizarArt_Click" Text="Actualizar" />
</asp:Content>
