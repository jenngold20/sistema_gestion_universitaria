# Sistema de Gestión Universitaria

Este proyecto es un sistema de gestión universitaria desarrollado en SQL y diseñado para administrar información relacionada con estudiantes, cursos, profesores, asignaturas, aulas, departamentos y la relación entre ellos.

## Estructura de la Base de Datos

El proyecto utiliza una base de datos relacional para almacenar la información. La estructura de la base de datos incluye las siguientes tablas:

- `Estudiante`: Almacena información sobre los estudiantes.
- `Matricula`: Registra las matrículas de los estudiantes en cursos.
- `Curso`: Contiene información sobre los cursos ofrecidos.
- `Profesor`: Guarda los datos de los profesores.
- `Profesor_Asignatura`: Asocia profesores con las asignaturas que enseñan.
- `Aula`: Describe las aulas disponibles.
- `Asignatura`: Almacena información sobre las asignaturas.
- `Departamento`: Contiene información sobre los departamentos académicos.
- `Profesor_Departamento`: Relaciona profesores con los departamentos a los que pertenecen.

## Requisitos

- Se necesita un servidor de base de datos compatible con SQL para ejecutar el sistema.
- Se recomienda utilizar un cliente de SQL para interactuar con la base de datos.

## Uso

1. Clona este repositorio en tu máquina local.
2. Ejecuta el script SQL `create_tables.sql` para crear la estructura de la base de datos.
3. Interactúa con la base de datos según sea necesario para tu aplicación.

## Contribución

Si deseas contribuir a este proyecto, sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una nueva rama (`git checkout -b feature/feature-name`).
3. Realiza tus cambios y haz commit (`git commit -am 'Add new feature'`).
4. Haz push a la rama (`git push origin feature/feature-name`).
5. Crea un nuevo Pull Request.


