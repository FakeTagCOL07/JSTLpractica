<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ include file="../../WEB-INF/jspf/conexion.jspf" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 8 - Base de Datos</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <c:set var="nombres" value="${param.nombres}"/>
    <c:set var="apellido1" value="${param.apellido1}"/>
    <c:set var="apellido2" value="${param.apellido2}"/>
    <c:set var="edad" value="${param.edad}"/>

    <c:catch var="excepcionBD">
        <sql:update var="insertar" dataSource="${empleados}">
            INSERT INTO empleados (nombres, apellido1, apellido2, edad)
            VALUES ('${nombres}', '${apellido1}', '${apellido2}', '${edad}');
        </sql:update>
    </c:catch>

    <nav class="navbar navbar-dark navbar-custom py-3">
        <div class="container">
            <span class="navbar-brand fw-bold"><i class="fa-solid fa-database text-warning me-2"></i>Registros de Empleados</span>
            <a href="index.jsp" class="btn btn-outline-light rounded-pill btn-sm px-3"><i class="fa-solid fa-arrow-left me-1"></i> Nuevo Registro</a>
        </div>
    </nav>

    <main class="container my-auto py-5">
        <div class="custom-card p-4 p-md-5">
            <h3 class="fw-bold mb-4 text-center">Lista Actualizada de Empleados (Clever Cloud)</h3>

            <c:if test="${excepcionBD != null}">
                <div class="alert alert-danger border-0 rounded-4 p-3 mb-4">
                    <i class="fa-solid fa-triangle-exclamation me-2"></i>
                    <strong>Error de Conexión / SQL:</strong> <c:out value="${excepcionBD.message}"/>
                </div>
            </c:if>

            <sql:query var="result" scope="request" dataSource="${empleados}">
                SELECT * FROM empleados;
            </sql:query>

            <div class="table-responsive">
                <table class="table table-hover align-middle table-custom mb-0">
                    <thead>
                        <tr>
                            <th scope="col" class="py-3 px-4">ID</th>
                            <th scope="col" class="py-3 px-4">Nombre</th>
                            <th scope="col" class="py-3 px-4">Apellidos</th>
                            <th scope="col" class="py-3 px-4">Edad</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="fila" items="${result.rows}">
                            <tr>
                                <td class="fw-bold px-4"><c:out value="${fila.id}" /></td>
                                <td class="px-4"><c:out value="${fila.nombres}" /></td>
                                <td class="px-4"><c:out value="${fila.apellido1} ${fila.apellido2}" /></td>
                                <td class="px-4"><span class="badge bg-primary-subtle text-primary rounded-pill px-3 py-2"><c:out value="${fila.edad}" /> años</span></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </main>

    <footer class="mt-auto py-4 bg-dark text-white text-center">
        <p class="mb-0 small text-white-50">Derechos reservados &copy; Paula Andrea Hurtado Vega & James Ricardo Amaya Cárdenas</p>
    </footer>
</body>
</html>