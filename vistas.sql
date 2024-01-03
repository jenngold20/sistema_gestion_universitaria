USE sistema_gestion_universitaria;

-- Vista para mostrar la información básica de los estudiantes y sus matrículas
CREATE VIEW VistaEstudiantesMatriculas AS
SELECT e.nombre AS NombreEstudiante, e.apellido AS ApellidoEstudiante, e.fecha_nacimiento AS FechaNacimiento, 
m.idMatricula AS IDMatricula, m.idCurso AS IDCurso, m.año AS AñoMatricula
FROM Estudiante e
INNER JOIN Matricula m ON e.idEstudiante = m.idEstudiante;

-- Vista para mostrar la información de los profesores y las asignaturas que enseñan, ordenada por apellido y especialidad

CREATE VIEW VistaProfesoresAsignaturas AS
SELECT p.nombre AS NombreProfesor, p.apellido AS ApellidoProfesor, p.especialidad AS EspecialidadProfesor, 
pa.idAsignatura AS IDAsignatura, a.nombre AS NombreAsignatura, a.creditos AS CreditosAsignatura
FROM Profesor p
INNER JOIN Profesor_Asignatura pa ON p.idProfesor = pa.idProfesor
INNER JOIN Asignatura a ON pa.idAsignatura = a.idAsignatura
ORDER BY p.apellido, p.especialidad;

-- Vista para mostrar la información de los cursos y sus aulas asignadas, limitada a 10 registros
CREATE VIEW VistaCursosAulas AS
SELECT c.nombre AS NombreCurso, c.creditos AS CreditosCurso, a.nombre AS NombreAula, a.capacidad AS CapacidadAula
FROM Curso c
INNER JOIN Clase cl ON c.idCurso = cl.idCurso
INNER JOIN Aula a ON cl.idAula = a.idAula
LIMIT 10;

-- Vista para mostrar la información de las evaluaciones de los cursos con un puntaje total mayor a 80, agrupadas por curso y tipo de evaluación
CREATE VIEW VistaEvaluacionesCursos AS
SELECT e.idEvaluacion AS IDEvaluacion, e.idCurso AS IDCurso, e.idAsignatura AS IDAsignatura, e.tipo AS TipoEvaluacion, 
e.fecha AS FechaEvaluacion, e.puntaje_total AS PuntajeTotal
FROM Evaluacion e
INNER JOIN Curso c ON e.idCurso = c.idCurso
HAVING PuntajeTotal > 80
ORDER BY c.nombre, e.tipo;

