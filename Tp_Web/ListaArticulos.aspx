<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ListaArticulos.aspx.cs" Inherits="Tp_Web.ListaArticulos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <a href="AgregarArticulo.aspx" class="btn btn-primary">Agregar Articulo</a>
    <br />
    <br />
    <div class="row">
        <div class="col">
            <asp:GridView ID="dgvArticulos" runat="server" CssClass="table table-dark table-bordered" AutoGenerateColumns="false">
                <Columns>
                    <asp:BoundField HeaderText="Codigo" DataField="Codigo" />
                    <asp:BoundField HeaderText="Nombre" DataField="Nombre" />
                    <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                    <asp:BoundField HeaderText="Marca" DataField="Marcas" />
                    <asp:BoundField HeaderText="Marca" DataField="Categoria" />
                    <asp:BoundField HeaderText="Precio" DataField="Precio" DataFormatString="{0:C2}" />
                    <asp:CommandField ShowSelectButton="false" SelectText="Agregar al carrito" HeaderText="Agregar al Carrito" />
                </Columns>
                <HeaderStyle HorizontalAlign="Center" />
                <RowStyle HorizontalAlign="Center" />
                <AlternatingRowStyle HorizontalAlign="Center" />
            </asp:GridView>
        </div>
    </div>

</asp:Content>
