<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CarritoDeCompras.aspx.cs" Inherits="Tp_Web.CarritoDeCompras" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Mi Carrito</h1>
    <br />
    <br />
    <asp:GridView ID="dgvCarrito" runat="server" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Código" DataField="Codigo" />
            <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
            <asp:BoundField HeaderText="Descripción" DataField="Descripcion" />
            <asp:BoundField HeaderText="Precio" DataField="Precio" DataFormatString="{0:C2}" />
        </Columns>
        <HeaderStyle HorizontalAlign="Center" />
        <RowStyle HorizontalAlign="Center" />
        <AlternatingRowStyle HorizontalAlign="Center" />
    </asp:GridView>
    <h2>
        <asp:Label ID="lblMensaje" style="background-color: yellow; color: red;" runat="server" Text=""></asp:Label>
    </h2>
    <br />
    <br />
    <a href="ListadoArticulos.aspx" class="btn btn-primary">Agregar articulo</a>
    <a href="ListadoArticulos.aspx" class="btn btn-primary">Finalizar</a>
</asp:Content>
