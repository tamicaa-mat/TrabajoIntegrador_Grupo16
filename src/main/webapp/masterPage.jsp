<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8" />
    <title>SISTEMA BANCARIO UTN</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
	<header class="navbar navbar-dark bg-secondary">
	    <div class="container-fluid d-flex justify-content-between align-items-center">
	        <span class="navbar-brand mb-0 h1">SISTEMA BANCARIO UTN</span>
	        <span class="text-white mx-3">Usuario: <strong>Invitado</strong></span>
	        <a href="login.jsp" class="btn btn-outline-light btn-sm">Cerrar sesión</a>
	    </div>
	</header>

	<nav class="navbar bg-light border-bottom shadow-sm">
	    <div class="container d-flex flex-column align-items-center py-3">

	        <!-- ADMINISTRADOR -->
	        <div class="mb-3 w-100 d-flex justify-content-center flex-wrap gap-2">
	            <span class="fw-bold text-secondary me-3 align-self-center">
	                ADMINISTRADOR
	            </span>
	            <a href="AdministradorABMLclientes.jsp" class="btn btn-secondary btn-sm">Gestión Clientes</a>
	            <a href="AdministradorABMLusuarios.jsp" class="btn btn-secondary btn-sm">Gestión Usuarios</a>
	            <a href="AdministradorListaCuentas.jsp" class="btn btn-secondary btn-sm">Gestión Cuentas</a>
	            <a href="AdministradorListaPrestamos.jsp" class="btn btn-secondary btn-sm">Autorizar Préstamos</a>
	            <a href="AdministradorReportes.jsp" class="btn btn-secondary btn-sm">Reportes Admin</a>
	            <a href="AdministradorListaClientes.jsp" class="btn btn-secondary btn-sm">Listado Clientes</a>
	        </div>

	        <!-- CLIENTE -->
	        <div class="w-100 d-flex justify-content-center flex-wrap gap-2">
	            <span class="fw-bold text-secondary me-3 align-self-center">
	                CLIENTE
	            </span>
	            <a href="ClienteListaMovimientos.jsp" class="btn btn-secondary btn-sm">Movimientos</a>
	            <a href="CLIENTEtransferencias.jsp" class="btn btn-secondary btn-sm">Transferencias</a>
	            <a href="CLIENTEsolicitarPrestamos.jsp" class="btn btn-secondary btn-sm">Solicitar Préstamo</a>
	            <a href="CLIENTEpagoPrestamos.jsp" class="btn btn-secondary btn-sm">Pago Préstamos</a>
	            <a href="ClienteInfoPersonal.jsp" class="btn btn-secondary btn-sm">Mi Información</a>
	        </div>

	        <!-- AVISO NO LOGUEADO -->
	        <div class="alert alert-warning mt-3" role="alert">
	            No se ha iniciado sesión. <a href="login.jsp">Inicie sesión</a>
	        </div>

	    </div>
	</nav>

	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>





























