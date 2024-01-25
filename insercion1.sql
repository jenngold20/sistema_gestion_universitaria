USE sistema_gestion_universitaria;

-- Inserción de datos en la tabla Departamento
INSERT INTO Departamento (nombre, telefono) VALUES
    ('Departamento de Matemáticas', '123-456-7890'),
    ('Departamento de Historia', '123-456-7891'),
    ('Departamento de Literatura', '123-456-7892'),
    ('Departamento de Biología', '123-456-7893'),
    ('Departamento de Física', '123-456-7894'),
    ('Departamento de Química', '123-456-7895'),
    ('Departamento de Arte', '123-456-7896'),
    ('Departamento de Música', '123-456-7897'),
    ('Departamento de Educación Física', '123-456-7898'),
    ('Departamento de Informática', '123-456-7899'),
    ('Departamento de Economía', '123-456-7800'),
    ('Departamento de Lenguas', '123-456-7801'),
    ('Departamento de Geografía', '123-456-7802'),
    ('Departamento de Psicología', '123-456-7803'),
    ('Departamento de Sociología', '123-456-7804');

-- Inserción de datos en la tabla Profesor
INSERT INTO Profesor (nombre, apellido, especialidad) VALUES
    ('José', 'García', 'Matemáticas'),
    ('María', 'López', 'Historia'),
    ('Juan', 'Martínez', 'Literatura'),
    ('Laura', 'Díaz', 'Biología'),
    ('Carlos', 'Pérez', 'Física'),
    ('Ana', 'Sánchez', 'Química'),
    ('Pedro', 'Flores', 'Arte'),
    ('Sofía', 'Gómez', 'Música'),
    ('Luis', 'Hernández', 'Educación Física'),
    ('Elena', 'Rodríguez', 'Informática'),
    ('Miguel', 'González', 'Economía'),
    ('Lucía', 'Fernández', 'Lenguas'),
    ('Andrés', 'Martínez', 'Geografía'),
    ('Carmen', 'López', 'Psicología'),
    ('Pablo', 'Gómez', 'Sociología');

-- Inserción de datos en la tabla Asignatura
INSERT INTO Asignatura (nombre, creditos) VALUES
    ('Álgebra', 4),
    ('Historia Universal', 3),
    ('Literatura Contemporánea', 3),
    ('Biología Celular', 4),
    ('Física Moderna', 4),
    ('Química Orgánica', 4),
    ('Arte Renacentista', 2),
    ('Música Clásica', 2),
    ('Educación Física Avanzada', 2),
    ('Programación en Java', 3),
    ('Economía Internacional', 3),
    ('Lingüística', 3),
    ('Geografía Humana', 3),
    ('Psicología del Aprendizaje', 3),
    ('Sociología Urbana', 3);

-- Inserción de datos en la tabla Aula
INSERT INTO Aula (nombre, capacidad) VALUES
    ('Aula 101', 30),
    ('Aula 102', 25),
    ('Aula 103', 35),
    ('Aula 104', 40),
    ('Aula 105', 28),
    ('Aula 106', 32),
    ('Aula 107', 20),
    ('Aula 108', 30),
    ('Aula 109', 25),
    ('Aula 110', 35),
    ('Aula 111', 30),
    ('Aula 112', 25),
    ('Aula 113', 35),
    ('Aula 114', 40),
    ('Aula 115', 28);
    
-- Inserción de datos en la tabla Curso
INSERT INTO Curso (nombre, creditos) VALUES
    ('Matemáticas', 4),
    ('Historia', 3),
    ('Literatura', 3),
    ('Biología', 4),
    ('Física', 4),
    ('Química', 4),
    ('Arte', 2),
    ('Música', 2),
    ('Educación Física', 2),
    ('Informática', 3),
    ('Economía', 3),
    ('Lenguas Extranjeras', 3),
    ('Geografía', 3),
    ('Psicología', 3),
    ('Sociología', 3);


-- Inserción de datos en la tabla Estudiante
INSERT INTO Estudiante (nombre, apellido, fecha_nacimiento) VALUES
    ('Carlos', 'Gómez', '2001-03-10'),
    ('Ana', 'Martínez', '2000-07-25'),
    ('Pedro', 'López', '2002-01-05'),
    ('Laura', 'Díaz', '1999-09-18'),
    ('Juan', 'Rodríguez', '2001-11-30'),
    ('María', 'Hernández', '2000-04-12'),
    ('Sofía', 'Gutiérrez', '2002-06-22'),
    ('Luis', 'Sánchez', '1999-08-08'),
    ('Elena', 'Pérez', '2001-02-28'),
    ('Diego', 'Flores', '2000-10-15'),
    ('Manuel', 'González', '2000-05-20'),
    ('Julia', 'Fernández', '2001-12-15'),
    ('Andrea', 'Martínez', '2002-04-30'),
    ('Pedro', 'López', '2000-08-25'),
    ('Lucía', 'Rodríguez', '1999-10-05');

-- Inserción de datos en la tabla Matricula
INSERT INTO Matricula (idEstudiante, idCurso, año) VALUES
    (1, 1, 2022),
    (2, 2, 2022),
    (3, 3, 2022),
    (4, 4, 2022),
    (5, 5, 2022),
    (6, 6, 2022),
    (7, 7, 2022),
    (8, 8, 2022),
    (9, 9, 2022),
    (10, 10, 2022),
    (11, 11, 2022),
    (12, 12, 2022),
    (13, 13, 2022),
    (14, 14, 2022),
    (15, 15, 2022);

-- Inserción de datos en la tabla Profesor_Asignatura
INSERT INTO Profesor_Asignatura (idProfesor, idAsignatura, año) VALUES
    (1, 1, 2022),
    (2, 2, 2022),
    (3, 3, 2022),
    (4, 4, 2022),
    (5, 5, 2022),
    (6, 6, 2022),
    (7, 7, 2022),
    (8, 8, 2022),
    (9, 9, 2022),
    (10, 10, 2022),
    (11, 11, 2022),
    (12, 12, 2022),
    (13, 13, 2022),
    (14, 14, 2022),
    (15, 15, 2022);
    
    
    -- Inserción de datos en la tabla Clase
INSERT INTO Clase (idCurso, idAula, idProfesor, dia_semana, hora_inicio, hora_fin) VALUES
    (1, 1, 1, 'Lunes', '08:00:00', '10:00:00'),
    (2, 2, 2, 'Martes', '10:00:00', '12:00:00'),
    (3, 3, 3, 'Miércoles', '14:00:00', '16:00:00'),
    (4, 4, 4, 'Jueves', '08:00:00', '10:00:00'),
    (5, 5, 5, 'Viernes', '10:00:00', '12:00:00'),
    (6, 6, 6, 'Lunes', '14:00:00', '16:00:00'),
    (7, 7, 7, 'Martes', '08:00:00', '10:00:00'),
    (8, 8, 8, 'Miércoles', '10:00:00', '12:00:00'),
    (9, 9, 9, 'Jueves', '14:00:00', '16:00:00'),
    (10, 10, 10, 'Viernes', '08:00:00', '10:00:00'),
    (11, 11, 11, 'Lunes', '10:00:00', '12:00:00'),
    (12, 12, 12, 'Martes', '14:00:00', '16:00:00'),
    (13, 13, 13, 'Miércoles', '08:00:00', '10:00:00'),
    (14, 14, 14, 'Jueves', '10:00:00', '12:00:00'),
    (15, 15, 15, 'Viernes', '14:00:00', '16:00:00');
    
    
    -- Inserción de datos en la tabla Evaluacion
INSERT INTO Evaluacion (idCurso, idAsignatura, tipo, fecha, puntaje_total) VALUES
    (1, 1, 'Parcial', '2022-05-15', 100),
    (2, 2, 'Parcial', '2022-05-16', 95),
    (3, 3, 'Parcial', '2022-05-17', 90),
    (4, 4, 'Parcial', '2022-05-18', 85),
    (5, 5, 'Parcial', '2022-05-19', 80),
    (6, 6, 'Parcial', '2022-05-20', 75),
    (7, 7, 'Parcial', '2022-05-21', 70),
    (8, 8, 'Parcial', '2022-05-22', 65),
    (9, 9, 'Parcial', '2022-05-23', 60),
    (10, 10, 'Parcial', '2022-05-24', 55),
    (11, 11, 'Parcial', '2022-05-25', 50),
    (12, 12, 'Parcial', '2022-05-26', 45),
    (13, 13, 'Parcial', '2022-05-27', 40),
    (14, 14, 'Parcial', '2022-05-28', 35),
    (15, 15, 'Parcial', '2022-05-29', 30);
    
    
    -- Inserción de datos en la tabla Profesor_Departamento
INSERT INTO Profesor_Departamento (idProfesor, idDepartamento, desde_fecha, hasta_fecha) VALUES
    (1, 1, '2022-01-01', NULL),
    (2, 2, '2022-01-01', NULL),
    (3, 3, '2022-01-01', NULL),
    (4, 4, '2022-01-01', NULL),
    (5, 5, '2022-01-01', NULL),
    (6, 6, '2022-01-01', NULL),
    (7, 7, '2022-01-01', NULL),
    (8, 8, '2022-01-01', NULL),
    (9, 9, '2022-01-01', NULL),
    (10, 10, '2022-01-01', NULL),
    (11, 11, '2022-01-01', NULL),
    (12, 12, '2022-01-01', NULL),
    (13, 13, '2022-01-01', NULL),
    (14, 14, '2022-01-01', NULL),
    (15, 15, '2022-01-01', NULL);