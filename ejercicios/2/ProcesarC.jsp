<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 2 - Resultado</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark navbar-custom py-3">
        <div class="container">
            <span class="navbar-brand fw-bold"><i class="fa-solid fa-id-card text-success me-2"></i>Resultado Parámetros</span>
            <a href="index.jsp" class="btn btn-outline-light rounded-pill btn-sm px-3"><i class="fa-solid fa-arrow-left me-1"></i> Volver</a>
        </div>
    </nav>

    <main class="container my-auto py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="custom-card p-4 p-md-5 text-center">
                    <div class="mb-4">
                        <i class="fa-solid fa-circle-check text-success display-3"></i>
                    </div>
                    <h4 class="fw-bold mb-4">Imprimiendo Parámetros con JSTL</h4>
                    
                    <div class="list-group list-group-flush text-start rounded-3 overflow-hidden border mb-4">
                        <div class="list-group-item d-flex justify-content-between align-items-center p-3">
                            <span class="text-muted">Nombre:</span>
                            <span class="fw-bold text-dark"><c:out value="${param.nombre}" /></span>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center p-3">
                            <span class="text-muted">Primer Apellido:</span>
                            <span class="fw-bold text-dark"><c:out value="${param.apellido1}" /></span>
                        </div>
                        <div class="list-group-item d-flex justify-content-between align-items-center p-3">
                            <span class="text-muted">Segundo Apellido:</span>
                            <span class="fw-bold text-dark"><c:out value="${param.apellido2}" /></span>
                        </div>
                    </div>

                    <a href="index.jsp" class="btn btn-outline-primary rounded-pill w-100">Registrar Nuevo</a>
                </div>
            </div>
        </div>
    </main>

    <footer class="mt-auto py-4 bg-dark text-white text-center">
        <p class="mb-0 small text-white-50">Derechos reservados &copy; Paula Andrea Hurtado Vega & James Ricardo Amaya Cárdenas</p>
    </footer>
</body>
</html>