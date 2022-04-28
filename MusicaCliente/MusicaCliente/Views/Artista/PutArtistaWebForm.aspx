<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/_layout.Master" AutoEventWireup="true" CodeBehind="PutArtistaWebForm.aspx.cs" Inherits="MusicaCliente.Views.Artista.PutArtistaWebForm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Actualizar Artista</h1>
        <asp:GridView ID="GridView1" runat="server" CssClass="table w-75">
        </asp:GridView>
        ID:<asp:TextBox ID="txtIdArtista" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        Nombre:<asp:TextBox ID="txtNombreArt" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        Email:<asp:TextBox ID="txtEmailArt" runat="server" CssClass="form-control w-25"></asp:TextBox>
        <br />
        Fecha de Creación:<br />        
        <asp:Calendar ID="calPutArtista" runat="server"></asp:Calendar>
        <br />
        Cantidad Integrantes<asp:TextBox ID="txtIntegrantesArt" runat="server" CssClass="form-control w-25"></asp:TextBox>

        <br />

        <asp:Button ID="brnActualizarArt" runat="server" OnClick="brnActualizarArt_Click" Text="Actualizar" class="btn btn-primary"/>

        <asp:Button ID="btnLimpiar" runat="server" OnClick="btnLimpiar_Click" Text="Limpiar" CssClass="btn btn-secondary" />
        <br />
        <br />


    </div>
</asp:Content>
