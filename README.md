# ejercicio - sql - java - apirest

La Empresa XYZ cuenta con empleados de manera que:

1. Cada empleado tiene la siguiente información: nombre, codigo, puesto de trabajo, sueldo, una referencia a su superior directo y una referencia al grupo al que pertenece.
2. cada grupo tiene información sobre: nombre de oficina, codigo del área, una lista de referencia a sus empleados.
3. El superior directo tambien en un empleado

Relizar

1. CRUD
2. Uso de MVC, Hibernate, MySQL
3. Crear servicio web que permita consultar los empleados de Empresa XYZ

# Estructura

Java, microservicios APIRest con SpringBoot sobre HTML y JS.

1. Controllers
   1. EmpleadoController (C)
2. Models
   1. Empleado (C)
3. DAO
   1. DAO (I)
   2. EmpleadoDAOImpl (C:DAO)

