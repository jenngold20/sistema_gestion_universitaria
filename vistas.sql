USE sistema_gestion_universitaria;

-- Vista para mostrar la información básica de los estudiantes y sus matrículas
CREATE VIEW VistaEstudiantesMatriculas AS
SELECT e.nombre AS NombreEstudiante, e.apellido AS ApellidoEstudiante, e.fecha_nacimiento AS FechaNacimiento, 
m.idMatricula AS IDMatricula, m.idCurso AS IDCurso, m.año AS AñoMatricula
FROM Estudiante e
INNER JOIN Matricula m ON e.idEstudiante = m.idEstudiante;
