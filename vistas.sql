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