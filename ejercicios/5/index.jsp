<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 5 - Captura de Excepciones</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark navbar-custom py-3">
        <div class="container">
            <span class="navbar-brand fw-bold"><i class="fa-solid fa-triangle-exclamation text-danger me-2"></i>Ejercicio 5: c:catch</span>
            <a href="../../index.jsp" class="btn btn-outline-light rounded-pill btn-sm px-3"><i class="fa-solid fa-arrow-left me-1"></i> Inicio</a>
        </div>
    </nav>

    <main class="container my-auto py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="custom-card p-4 p-md-5 text-center">
                    <h3 class="fw-bold mb-4 text-dark">Control de Excepciones</h3>

                    <c:catch var="miExcepcion">
                        <%-- Generamos un error explícito dividiendo por cero --%>
                        <% int resultado = 100 / 0; %>
                    </c:catch>

                    <c:if test="${miExcepcion != null}">
                        <div class="alert alert-danger border-0 rounded-4 p-4 mb-4 text-start">
                            <div class="d-flex align-items-center gap-3 mb-2">
                                <i class="fa-solid fa-bug fs-2 text-danger"></i>
                                <h5 class="fw-bold mb-0">Excepción Capturada Exitosamente</h5>
                            </div>
                            <hr>
                            <p class="mb-1 small text-muted">Mensaje de error:</p>
                            <code class="d-block p-2 bg-white rounded border text-danger"><c:out value="${miExcepcion.message}"/></code>
                        </div>
                    </c:if>

                    <a href="../../index.jsp" class="btn btn-primary-custom w-100">Volver al Inicio</a>
                </div>
            </div>
        </div>
    </main>

    <footer class="mt-auto py-4 bg-dark text-white text-center">
        <p class="mb-0 small text-white-50">Derechos reservados &copy; Paula Andrea Hurtado Vega & James Ricardo Amaya Cárdenas</p>
    </footer>
</body>
</html>