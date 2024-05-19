<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="AgregarArticulo.aspx.cs" Inherits="Tp_Web.AgregarArticulo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col-6">
            <div class="mb-3">
                <label for="txtID" class="form-label">ID</label>
                <asp:TextBox runat="server" ID="txtID" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtCodigo" class="form-label">Codigo</label>
                <asp:TextBox runat="server" ID="txtCodigo" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtNombre" class="form-label">Nombre</label>
                <asp:TextBox runat="server" ID="txtNombre" CssClass="form-control" />
            </div>
            <div class="mb-3">
                <label for="txtDescripcion" class="form-label">Descripción</label>
                <asp:TextBox runat="server" TextMode="MultiLine" ID="txtDescripcion" CssClass="form-control" />
            </div>
            <%--            <div class="mb-3">
                <label for="txtMarca" class="form-label">Marca</label>
                <asp:TextBox runat="server" ID="txtMarca" CssClass="form-control" />
            </div>--%>
            <div class="mb-3">
                <label for="ddlMarca" class="form-label">Seleccione Marca</label>
                <asp:DropDownList class="btn dropdown-toggle form-select dropdown-celeste text-start" ID="ddlMarca" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="ddlCategoria" class="form-label">Seleccione Categoria</label>
                <asp:DropDownList class="btn dropdown-toggle form-select dropdown-toggle text-start" ID="ddlCategoria" runat="server"></asp:DropDownList>
            </div>
            <div class="mb-3">
                <label for="txtPrecio" class="form-label">Precio $ </label>
                <asp:TextBox runat="server" ID="txtPrecio" CssClass="form-control" />
            </div>
        </div>
    </div>  
        <div class="mb-3">
            <asp:Button ID="btnAgregar" runat="server" OnClick="btnAgregar_Click" class="btn btn-primary" Text="Agregar"/>
            <a href="ListadoArticulos.aspx" class="btn btn-primary">Cancelar</a>
        </div>
</asp:Content>


