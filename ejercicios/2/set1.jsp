<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 2 - Asignación con c:set</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark navbar-custom py-3">
        <div class="container">
            <span class="navbar-brand fw-bold"><i class="fa-solid fa-id-card text-success me-2"></i>Uso de c:set</span>
            <a href="index.jsp" class="btn btn-outline-light rounded-pill btn-sm px-3"><i class="fa-solid fa-arrow-left me-1"></i> Volver</a>
        </div>
    </nav>

    <main class="container my-auto py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="custom-card p-4 p-md-5 text-center">
                    <h4 class="fw-bold mb-4">Asignación de Variables</h4>
                    
                    <c:set var="mivariable" value="James Amaya" scope="session"/>
                    
                    <div class="alert alert-success border-0 rounded-4 p-4 mb-4">
                        <i class="fa-solid fa-user-check fs-1 text-success mb-2"></i>
                        <p class="text-muted mb-1 small">Valor asignado en la sesión:</p>
                        <h4 class="text-dark fw-bold mb-0"><c:out value="${mivariable}" /></h4>
                    </div>

                    <a href="../../index.jsp" class="btn btn-primary-custom w-100">Ir al Dashboard</a>
                </div>
            </div>
        </div>
    </main>

    <footer class="mt-auto py-4 bg-dark text-white text-center">
        <p class="mb-0 small text-white-50">Derechos reservados &copy; Paula Andrea Hurtado Vega & James Ricardo Amaya Cárdenas</p>
    </footer>
</body>
</html>