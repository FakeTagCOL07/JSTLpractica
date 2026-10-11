<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 2 - Captura de Datos</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark navbar-custom py-3">
        <div class="container">
            <span class="navbar-brand fw-bold"><i class="fa-solid fa-id-card text-success me-2"></i>Ejercicio 2: c:set</span>
            <a href="../../index.jsp" class="btn btn-outline-light rounded-pill btn-sm px-3"><i class="fa-solid fa-arrow-left me-1"></i> Inicio</a>
        </div>
    </nav>

    <main class="container my-auto py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="custom-card p-4 p-md-5">
                    <h3 class="fw-bold text-center mb-4 text-dark">Datos Personales</h3>
                    <form role="form" name="persona" action="ProcesarC.jsp" method="POST">
                        <div class="mb-3">
                            <label for="nombre" class="form-label fw-semibold">Ingrese su nombre:</label>
                            <input type="text" class="form-control" name="nombre" id="nombre" placeholder="Ej. Pepita" required>
                        </div>
                        <div class="mb-3">
                            <label for="apellido1" class="form-label fw-semibold">Ingrese su primer apellido:</label>
                            <input type="text" class="form-control" id="apellido1" name="apellido1" placeholder="Ej. Cortez" required>
                        </div>
                        <div class="mb-4">
                            <label for="apellido2" class="form-label fw-semibold">Ingrese su segundo apellido:</label>
                            <input type="text" class="form-control" id="apellido2" name="apellido2" placeholder="Ej. Zamano">
                        </div>
                        <div class="d-grid gap-2">
                            <button type="submit" class="btn btn-primary-custom">Enviar Parámetros</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>

    <footer class="mt-auto py-4 bg-dark text-white text-center">
        <p class="mb-0 small text-white-50">Derechos reservados &copy; Paula Andrea Hurtado Vega & James Ricardo Amaya Cárdenas</p>
    </footer>
</body>
</html>