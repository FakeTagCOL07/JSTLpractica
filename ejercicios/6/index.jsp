<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 6 - Bucles c:forEach</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark navbar-custom py-3">
        <div class="container">
            <span class="navbar-brand fw-bold"><i class="fa-solid fa-rotate text-primary me-2"></i>Ejercicio 6: c:forEach</span>
            <a href="../../index.jsp" class="btn btn-outline-light rounded-pill btn-sm px-3"><i class="fa-solid fa-arrow-left me-1"></i> Inicio</a>
        </div>
    </nav>

    <main class="container my-auto py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="custom-card p-4 p-md-5">
                    <h3 class="fw-bold text-center mb-4 text-dark">Iteración de Elementos</h3>
                    
                    <div class="list-group rounded-3 overflow-hidden border">
                        <c:forEach var="i" begin="1" end="5" step="1">
                            <div class="list-group-item d-flex justify-content-between align-items-center p-3">
                                <span><i class="fa-solid fa-hashtag text-primary me-2"></i>Iteración Número</span>
                                <span class="badge bg-primary rounded-pill px-3 py-2 fs-6"><c:out value="${i}"/></span>
                            </div>
                        </c:forEach>
                    </div>

                    <a href="../../index.jsp" class="btn btn-outline-primary rounded-pill w-100 mt-4">Volver al Inicio</a>
                </div>
            </div>
        </div>
    </main>

    <footer class="mt-auto py-4 bg-dark text-white text-center">
        <p class="mb-0 small text-white-50">Derechos reservados &copy; Paula Andrea Hurtado Vega & James Ricardo Amaya Cárdenas</p>
    </footer>
</body>
</html>