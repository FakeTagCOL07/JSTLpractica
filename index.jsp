<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Taller JSTL - Dashboard</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <!-- Header Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom py-3">
        <div class="container">
            <a class="navbar-brand d-flex align-items-center gap-2 fw-bold fs-4" href="index.jsp">
                <i class="fa-brands fa-java text-warning fs-2"></i>
                <span>JSTL <span class="text-primary-emphasis">Practica</span></span>
            </a>
            <span class="badge bg-primary-subtle text-primary border border-primary-subtle rounded-pill px-3 py-2">Versión 1.2</span>
        </div>
    </nav>

    <!-- Content -->
    <main class="container my-auto py-5">
        <div class="text-center mb-5">
            <h1 class="fw-bold display-5 text-dark mb-2">Taller Práctico JSTL</h1>
            <p class="text-secondary lead">Seleccione un módulo para ejecutar los ejercicios de la guía</p>
        </div>

        <div class="row g-4">
            <!-- Ejercicio 1 Card -->
            <div class="col-md-6 col-lg-4">
                <div class="custom-card p-4 h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="p-3 bg-primary-subtle rounded-3 text-primary">
                                <i class="fa-solid fa-terminal fs-4"></i>
                            </div>
                            <h5 class="fw-bold mb-0">Ejercicio 1</h5>
                        </div>
                        <p class="text-muted small">Uso básico de la etiqueta <code>c:out</code> para impresión de expresiones y concatenaciones.</p>
                    </div>
                    <button data-bs-toggle="modal" data-bs-target="#Ejercicio01" class="btn btn-outline-primary rounded-pill w-100 mt-3 fw-semibold">Ejecutar Demo</button>
                </div>
            </div>

            <!-- Ejercicio 2 Card -->
            <div class="col-md-6 col-lg-4">
                <div class="custom-card p-4 h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="p-3 bg-success-subtle rounded-3 text-success">
                                <i class="fa-solid fa-id-card fs-4"></i>
                            </div>
                            <h5 class="fw-bold mb-0">Ejercicio 2</h5>
                        </div>
                        <p class="text-muted small">Almacenamiento e impresión de datos recibidos por parámetro con <code>c:set</code>.</p>
                    </div>
                    <a href="ejercicios/2/index.jsp" class="btn btn-outline-success rounded-pill w-100 mt-3 fw-semibold">Ir al Módulo</a>
                </div>
            </div>

            <!-- Ejercicio 3 Card -->
            <div class="col-md-6 col-lg-4">
                <div class="custom-card p-4 h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="p-3 bg-warning-subtle rounded-3 text-warning">
                                <i class="fa-solid fa-code-branch fs-4"></i>
                            </div>
                            <h5 class="fw-bold mb-0">Ejercicio 3</h5>
                        </div>
                        <p class="text-muted small">Evaluación de condiciones lógicas con la etiqueta condicional <code>c:if</code>.</p>
                    </div>
                    <a href="ejercicios/3/index.jsp" class="btn btn-outline-warning rounded-pill w-100 mt-3 fw-semibold">Ir al Módulo</a>
                </div>
            </div>

            <!-- Ejercicio 4 Card -->
            <div class="col-md-6 col-lg-4">
                <div class="custom-card p-4 h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="p-3 bg-info-subtle rounded-3 text-info">
                                <i class="fa-solid fa-list-check fs-4"></i>
                            </div>
                            <h5 class="fw-bold mb-0">Ejercicio 4</h5>
                        </div>
                        <p class="text-muted small">Estructura de selección múltiple mediante <code>c:choose</code>, <code>c:when</code> y <code>c:otherwise</code>.</p>
                    </div>
                    <a href="ejercicios/4/index.jsp" class="btn btn-outline-info rounded-pill w-100 mt-3 fw-semibold">Ir al Módulo</a>
                </div>
            </div>

            <!-- Ejercicio 5 Card -->
            <div class="col-md-6 col-lg-4">
                <div class="custom-card p-4 h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="p-3 bg-danger-subtle rounded-3 text-danger">
                                <i class="fa-solid fa-triangle-exclamation fs-4"></i>
                            </div>
                            <h5 class="fw-bold mb-0">Ejercicio 5</h5>
                        </div>
                        <p class="text-muted small">Captura y manejo estructurado de excepciones de código Java con <code>c:catch</code>.</p>
                    </div>
                    <a href="ejercicios/5/index.jsp" class="btn btn-outline-danger rounded-pill w-100 mt-3 fw-semibold">Ir al Módulo</a>
                </div>
            </div>

            <!-- Ejercicio 6 Card -->
            <div class="col-md-6 col-lg-4">
                <div class="custom-card p-4 h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="p-3 bg-purple-subtle rounded-3 text-primary">
                                <i class="fa-solid fa-rotate fs-4"></i>
                            </div>
                            <h5 class="fw-bold mb-0">Ejercicio 6</h5>
                        </div>
                        <p class="text-muted small">Iteración iterativa de bucles y control del estado del índice con <code>c:forEach</code>.</p>
                    </div>
                    <a href="ejercicios/6/index.jsp" class="btn btn-outline-primary rounded-pill w-100 mt-3 fw-semibold">Ir al Módulo</a>
                </div>
            </div>

            <!-- Ejercicio 7 Card -->
            <div class="col-md-6 col-lg-4">
                <div class="custom-card p-4 h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="p-3 bg-secondary-subtle rounded-3 text-secondary">
                                <i class="fa-solid fa-scissors fs-4"></i>
                            </div>
                            <h5 class="fw-bold mb-0">Ejercicio 7</h5>
                        </div>
                        <p class="text-muted small">División e iteración de cadenas de texto delimitadas usando <code>c:forTokens</code>.</p>
                    </div>
                    <a href="ejercicios/7/index.jsp" class="btn btn-outline-secondary rounded-pill w-100 mt-3 fw-semibold">Ir al Módulo</a>
                </div>
            </div>

            <!-- Ejercicio 8 Card -->
            <div class="col-md-6 col-lg-4">
                <div class="custom-card p-4 h-100 d-flex flex-column justify-content-between">
                    <div>
                        <div class="d-flex align-items-center gap-3 mb-3">
                            <div class="p-3 bg-dark-subtle rounded-3 text-dark">
                                <i class="fa-solid fa-database fs-4"></i>
                            </div>
                            <h5 class="fw-bold mb-0">Ejercicio 8</h5>
                        </div>
                        <p class="text-muted small">Conexión a MySQL, inserción dinámica e impresión con la librería <code>sql:JSTL</code>.</p>
                    </div>
                    <a href="ejercicios/8/index.jsp" class="btn btn-outline-dark rounded-pill w-100 mt-3 fw-semibold">Ir al Módulo</a>
                </div>
            </div>
        </div>
    </main>

    <!-- Modal Ejercicio 1 -->
    <div class="modal fade" id="Ejercicio01" tabindex="-1" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content border-0 custom-card p-2">
                <div class="modal-header border-0 pb-0">
                    <h5 class="modal-title fw-bold">Primer Ejemplo con JSTL</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body text-center py-4">
                    <div class="p-3 bg-light rounded-3 mb-3 border">
                        <p class="text-muted mb-1 small">Cadena de caracteres estática:</p>
                        <h5 class="text-dark fw-bold mb-0"><c:out value="1+2+3"/></h5>
                    </div>
                    <div class="p-3 bg-primary-subtle rounded-3 border border-primary-subtle">
                        <p class="text-primary mb-1 small">Suma calculada dinámicamente con EL:</p>
                        <h4 class="text-primary fw-bold mb-0"><c:out value="${1+2+3}"/></h4>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="mt-auto py-4 bg-dark text-white text-center">
        <div class="container">
            <p class="mb-0 small text-white-50">Derechos reservados &copy; Paula Andrea Hurtado Vega & James Ricardo Amaya Cárdenas</p>
        </div>
    </footer>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>