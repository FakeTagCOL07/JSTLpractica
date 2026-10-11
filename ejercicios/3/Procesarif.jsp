<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 3 - Resultado</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark navbar-custom py-3">
        <div class="container">
            <span class="navbar-brand fw-bold"><i class="fa-solid fa-code-branch text-warning me-2"></i>Resultado Condicional</span>
            <a href="index.jsp" class="btn btn-outline-light rounded-pill btn-sm px-3"><i class="fa-solid fa-arrow-left me-1"></i> Volver</a>
        </div>
    </nav>

    <main class="container my-auto py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="custom-card p-4 p-md-5 text-center">
                    <h4 class="fw-bold mb-4">Evaluación con c:if</h4>

                    <c:if test="${param.edad >= 18}">
                        <div class="alert alert-success border-0 rounded-4 p-4 mb-4">
                            <i class="fa-solid fa-circle-check fs-1 text-success mb-2"></i>
                            <h4 class="fw-bold mb-1">¡Es mayor de edad!</h4>
                            <p class="mb-0 text-muted">Edad ingresada: <strong><c:out value="${param.edad}"/></strong> años.</p>
                        </div>
                    </c:if>

                    <c:if test="${param.edad < 18}">
                        <div class="alert alert-danger border-0 rounded-4 p-4 mb-4">
                            <i class="fa-solid fa-circle-xmark fs-1 text-danger mb-2"></i>
                            <h4 class="fw-bold mb-1">Es menor de edad</h4>
                            <p class="mb-0 text-muted">Edad ingresada: <strong><c:out value="${param.edad}"/></strong> años.</p>
                        </div>
                    </c:if>

                    <a href="index.jsp" class="btn btn-outline-primary rounded-pill w-100">Probar con otra edad</a>
                </div>
            </div>
        </div>
    </main>

    <footer class="mt-auto py-4 bg-dark text-white text-center">
        <p class="mb-0 small text-white-50">Derechos reservados &copy; Paula Andrea Hurtado Vega & James Ricardo Amaya Cárdenas</p>
    </footer>
</body>
</html>