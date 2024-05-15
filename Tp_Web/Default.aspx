<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Tp_Web.Default1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Articulos</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <script src="Scripts/bootstrap.min.js"></script>
<style>
    .navbar-brand {
        font-size: 50px;
    }
</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
                <div class="container">
                    <a class="navbar-brand mx-auto" href="#">Articulos Web</a>
                </div>
            </nav>

            <div class="container">
                <div class="row justify-content-center align-items-center" style="height: 80vh;">
                    <div class="col-md-15 text-center">
                        <h1>Grupo 32</h1><br /><br />
                        <h3>Integrantes</h3>
                        <p>Mauricio Almada</p>
                        <p>Santiago Garcia</p>
                        <p>Juan Cruz Escalante</p>
                        <a href="PaginaPrincipal.aspx" class="btn btn-primary">Ingresar</a>
                    </div>
                </div>
            </div>
        </div>
    </form>
    <footer class="fixed-bottom bg-dark text-white">
        <div class="container text-center">
            <p>Facultad Regional de General Pacheco</p>
            <p>Programación 3 - Turno Noche</p>
        </div>
    </footer>
</body>
</html>
