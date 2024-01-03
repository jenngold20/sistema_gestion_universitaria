# Proyecto de Gestión Universitaria

Este proyecto consiste en una base de datos para gestionar información relacionada con una institución universitaria, incluyendo estudiantes, profesores, asignaturas, matrículas, cursos, aulas, departamentos, y más. El objetivo es proporcionar una estructura de base de datos que permita a la institución gestionar eficientemente su información académica.

## Estructura de la Base de Datos

El diseño de la base de datos consta de las siguientes tablas principales:

- **Estudiante**: Almacena información sobre los estudiantes, incluyendo su nombre, apellido y fecha de nacimiento.

- **Matrícula**: Registra las matrículas de los estudiantes en cursos, incluyendo el año de la matrícula.

- **Curso**: Contiene información sobre los cursos ofrecidos, incluyendo su nombre y cantidad de créditos.

- **Profesor**: Guarda los datos de los profesores, incluyendo su nombre, apellido y especialidad.

- **Enseña**: Asocia profesores con las asignaturas que enseñan, incluyendo el año en que imparten la asignatura.

- **Aula**: Describe las aulas disponibles, incluyendo su nombre y capacidad.

- **Asignatura**: Almacena información sobre las asignaturas, incluyendo su nombre y cantidad de créditos.

- **Departamento**: Contiene información sobre los departamentos académicos, incluyendo su nombre y teléfono.

- **Perteneciente**: Relaciona profesores con los departamentos a los que pertenecen, incluyendo las fechas de inicio y fin de su pertenencia al departamento.

- **Clase**: Asocia cursos, aulas y profesores con clases programadas, incluyendo el día de la semana y las horas de inicio y fin.

- **Evaluación**: Registra las evaluaciones realizadas en los cursos, incluyendo el tipo de evaluación, la fecha y el puntaje total.

## Instrucciones de Uso

Para utilizar este proyecto, puedes importar la estructura de la base de datos y los datos de ejemplo en tu sistema de gestión de bases de datos preferido. Asegúrate de revisar y ajustar las configuraciones de conexión a la base de datos en el código según sea necesario para tu entorno.

## Contribuciones

Si deseas contribuir a este proyecto, por favor abre un problema o envía una solicitud de extracción con tus cambios propuestos. ¡Tus contribuciones son bienvenidas!


