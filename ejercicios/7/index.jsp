<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ejercicio 7 - Separación con Tokens</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.3.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../../css/estilo.css">
</head>
<body class="d-flex flex-column min-vh-100">

    <nav class="navbar navbar-dark navbar-custom py-3">
        <div class="container">
            <span class="navbar-brand fw-bold"><i class="fa-solid fa-scissors text-secondary me-2"></i>Ejercicio 7: c:forTokens</span>
            <a href="../../index.jsp" class="btn btn-outline-light rounded-pill btn-sm px-3"><i class="fa-solid fa-arrow-left me-1"></i> Inicio</a>
        </div>
    </nav>

    <main class="container my-auto py-5">
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="custom-card p-4 p-md-5">
                    <h3 class="fw-bold text-center mb-4 text-dark">División de Cadenas</h3>
                    <form action="ResultTokens.jsp" method="POST">
                        <div class="mb-3">
                            <label for="cadena" class="form-label fw-semibold">Cadenas separadas por coma:</label>
                            <input type="text" class="form-control" name="cadena" id="cadena" value="Azul,Rojo,Verde,Amarillo,Morado" required>
                        </div>
                        <div class="mb-4">
                            <label for="delimitador" class="form-label fw-semibold">Delimitador:</label>
                            <input type="text" class="form-control" name="delimitador" id="delimitador" value="," required>
                        </div>
                        <button type="submit" class="btn btn-primary-custom w-100">Separar Tokens</button>
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