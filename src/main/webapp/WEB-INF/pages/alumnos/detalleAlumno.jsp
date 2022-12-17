<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="../comunes/inicioHTML.jsp">
    <jsp:param name="elTitulo" value="Detalle de ${detalleAlumno.nombreCompleto}" />
</jsp:include>

<jsp:include page="../comunes/navbar.jsp" />

<section class="container py-3">
    <div class="row">
        <h1 class="h3">Detalle del Alumno</h1>
        <p class="lead">Información detallada del alumno ${detalleAlumno.nombreCompleto}.</p>
    </div>

    <div class="row align-items-center px-4 mt-3">
        <div class="col-md-5 col-lg-4" >
            <div class="card h-100">
                <jsp:include page="partes/dataCardAlumno.jsp">
                    <jsp:param name="fotoAlumno" value="${detalleAlumno.foto}" />
                    <jsp:param name="nombreCompletoAlumno" value="${detalleAlumno.nombreCompleto}" />
                </jsp:include>
            </div>
        </div>
        <div class="col-md-7 col-lg-8" >
            <div action="${pageContext.request.contextPath}/app?accion=detail&id=${detalleAlumno.id}"
                  method="post" class="was-validated border p-4 rounded-3 bg-light">
                <div class="row">
                    <div class="col-sm-6 mb-3">
                        <h4 for="nombre">Nombre</h4>
                        <h5>${detalleAlumno.nombre}</h5>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <h4 for="Apellido">Apellido</h4>
                        <h5>${detalleAlumno.apellido}</h5>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <h4 for="Mail">Mail</h4>
                        <h5>${detalleAlumno.mail}</h5>
                    </div>
                    <div class="col-sm-6 mb-3">
                        <h4 for="fechaNac">Fecha de nacimiento</h4>
                        <h5>${detalleAlumno.fechaNacimiento}</h5>
                    </div>
                    
                </div>
                <div class="row justify-content-end mt-2">
                    <div class="col-12">
                        <div class="float-end">
                            <a href="${pageContext.request.contextPath}/app" class="btn btn-secondary">Volver atrás</a>
                            <a href="${pageContext.request.contextPath}/app?accion=edit&id=${detalleAlumno.id}" class="btn btn-dark">Editar Alumno</a>
                            <a href="${pageContext.request.contextPath}/app?accion=delete&id=${detalleAlumno.id}" class="btn btn-danger">Borrar Alumno</a>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</section>

<script src="scripts/fotobase64.js"></script>
<jsp:include page="../comunes/footer.jsp"/>
<jsp:include page="../comunes/finHTML.jsp"/>


