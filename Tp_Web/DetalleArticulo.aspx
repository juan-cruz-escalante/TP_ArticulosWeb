<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="DetalleArticulo.aspx.cs" Inherits="Tp_Web.DetalleArticulo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h1>Detalle</h1>
    <asp:Label Text="text" ID="lblId" runat="server" />

    <div>
        <a href="PaginaPrincipal.aspx" class="btn btn-primary">Volver</a>
    </div>

</asp:Content>
