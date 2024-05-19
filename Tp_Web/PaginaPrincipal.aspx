<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PaginaPrincipal.aspx.cs" Inherits="Tp_Web.PaginaPrincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
            foreach(Dominio.Articulos art in listaArticulos)
            {
        %>
                <div class="col">
                    <div class="card h-100">
                        <img src="<%:art.imagenes.ImagenUrl %>"  class="card-img-top img-fluid" alt="...">
                            <div class="card-body d-flex flex-column justify-content-between";>
                            <h5 class="card-title text-center mb-0";><%:art.Nombre%></h5>
                            <%--
                            <p class="card-text">Descripción: <%:art.Descripcion%></p>
                            <p class="card-text">Marca: <%:art.Marcas.DescripcionMarca%></p>
                            <p class="card-text">Categoria: <%:art.Categoria.DescripcionCategoria%></p>
                            --%>
                            <p class="card-text text-center">Precio: $<%:art.Precio%></p>
                            <a class="btn btn-primary align-self-center" href="DetalleArticulo.aspx?id= <%:art.IdArticulo%>"> Ver detalle </a>
                        </div>
                    </div>
                </div>
        <%  }   %>
    </div>
</asp:Content>
