USE sistema_gestion_universitaria;

INSERT INTO Departamento (nombre, telefono) VALUES
    ('Departamento de Astronomía Avanzada', '123-456-7805'),
    ('Departamento de Estudios de la Cultura Pop', '123-456-7806'),
    ('Departamento de Ciencia de Datos en la Economía', '123-456-7807'),
    ('Departamento de Robótica y Automatización', '123-456-7808'),
    ('Departamento de Diseño de Juegos y Simulación', '123-456-7809');
    
    -- Inserción de datos adicionales en la tabla Profesor
INSERT INTO Profesor (nombre, apellido, especialidad) VALUES
    ('Rosa', 'Díaz', 'Astronomía Avanzada'),
    ('Jorge', 'Gutiérrez', 'Estudios de la Cultura Pop'),
    ('Marcela', 'Gómez', 'Ciencia de Datos en la Economía'),
    ('Ricardo', 'Martínez', 'Robótica y Automatización'),
    ('Sara', 'Fernández', 'Diseño de Juegos y Simulación'),
    ('Daniel', 'López', 'Neurociencia y Comportamiento Humano'),
    ('Paula', 'García', 'Arte Digital y Multimedia'),
    ('Luisa', 'Martínez', 'Emprendimiento Tecnológico'),
    ('Diego', 'Fernández', 'Ética en la Inteligencia Artificial'),
    ('Silvia', 'Gómez', 'Política y Derecho en el Ciberespacio');
    
    -- Inserción de datos adicionales en la tabla Asignatura
INSERT INTO Asignatura (nombre, creditos) VALUES
    ('Astronomía Avanzada', 4),
    ('Estudios de la Cultura Pop', 3),
    ('Ciencia de Datos en la Economía', 4),
    ('Robótica y Automatización', 4);

-- Inserción de datos adicionales en la tabla Aula
INSERT INTO Aula (nombre, capacidad) VALUES
    ('Aula 116', 32),
    ('Aula 117', 35),
    ('Aula 118', 30),
    ('Aula 119', 25),
    ('Aula 120', 35),
    ('Aula 121', 30);
    
    
    -- Inserción de datos adicionales en la tabla Curso
INSERT INTO Curso (nombre, creditos) VALUES
    ('Astronomía', 4),
    ('Cultura Pop', 3),
    ('Ciencia de Datos', 4),
    ('Robótica', 4),
    ('Diseño de Juegos', 3),
    ('Economía Global', 3),
    ('Lenguas Modernas', 3),
    ('Geografía Mundial', 3);
    
    -- Inserción de datos adicionales en la tabla Estudiante con apellidos italianos
INSERT INTO Estudiante (nombre, apellido, fecha_nacimiento) VALUES
    ('Giuseppe', 'Ricci', '2001-01-12'),
    ('Alessia', 'Romano', '2000-07-15'),
    ('Francesco', 'Ferrari', '2002-03-20'),
    ('Chiara', 'Gallo', '1999-09-25'),
    ('Marco', 'Conti', '2001-11-05'),
    ('Elena', 'Martini', '2000-04-18'),
    ('Giovanni', 'Rizzo', '2002-06-30'),
    ('Sofia', 'Moretti', '1999-08-08'),
    ('Matteo', 'Gatti', '2001-02-28'),
    ('Anna', 'Barbieri', '2000-10-15'),
    ('Luca', 'Fontana', '2000-05-20'),
    ('Alessandra', 'Santoro', '2001-12-15'),
    ('Davide', 'Mancini', '2002-04-30'),
    ('Elisa', 'Rinaldi', '2000-08-25'),
    ('Riccardo', 'Pellegrini', '1999-10-05');
    
    -- Inserción de datos adicionales en la tabla Matricula
INSERT INTO Matricula (idEstudiante, idCurso, año) VALUES
    (16, 1, 2022),
    (17, 2, 2022),
    (18, 3, 2022),
    (19, 4, 2022),
    (20, 5, 2022),
    (21, 6, 2022),
    (22, 7, 2022),
    (23, 8, 2022),
    (24, 9, 2022),
    (25, 10, 2022),
    (26, 11, 2022);
    
    
    -- Inserción de datos adicionales en la tabla Profesor_Asignatura
INSERT INTO Profesor_Asignatura (idProfesor, idAsignatura, año) VALUES
    (16, 1, 2022),
    (17, 2, 2022),
    (18, 3, 2022),
    (19, 4, 2022),
    (20, 5, 2022);
    
    
    -- Inserción de datos adicionales en la tabla Clase
INSERT INTO Clase (idCurso, idAula, idProfesor, dia_semana, hora_inicio, hora_fin) VALUES
    (16, 16, 16, 'Lunes', '08:00:00', '10:00:00'),
    (17, 17, 17, 'Martes', '10:00:00', '12:00:00'),
    (18, 18, 18, 'Miércoles', '14:00:00', '16:00:00'),
    (19, 19, 19, 'Jueves', '08:00:00', '10:00:00'),
    (20, 20, 20, 'Viernes', '10:00:00', '12:00:00'),
    (21, 21, 21, 'Lunes', '14:00:00', '16:00:00');


-- Inserción de datos adicionales en la tabla Evaluacion
/*INSERT INTO Evaluacion (idCurso, idAsignatura, tipo, fecha, puntaje_total) VALUES
    (16, 16, 'Parcial', '2022-05-30', 100),
    (17, 17, 'Parcial', '2022-05-31', 95),
    (18, 18, 'Parcial', '2022-06-01', 90),
    (19, 19, 'Parcial', '2022-06-02', 85),
    (20, 20, 'Parcial', '2022-06-03', 80),
    (21, 21, 'Parcial', '2022-06-04', 75),
    (22, 22, 'Parcial', '2022-06-05', 70),
    (23, 23, 'Parcial', '2022-06-06', 65),
    (24, 24, 'Parcial', '2022-06-07', 60);*/


-- Inserción de datos adicionales en la tabla Profesor_Departamento
INSERT INTO Profesor_Departamento (idProfesor, idDepartamento, desde_fecha, hasta_fecha) VALUES
    (16, 1, '2022-01-01', NULL),
    (17, 2, '2022-01-01', NULL),
    (18, 3, '2022-01-01', NULL),
    (19, 4, '2022-01-01', NULL),
    (20, 5, '2022-01-01', NULL),
    (21, 6, '2022-01-01', NULL),
    (22, 7, '2022-01-01', NULL),
    (23, 8, '2022-01-01', NULL),
    (24, 9, '2022-01-01', NULL),
    (25, 10, '2022-01-01', NULL);



-- Inserción de datos en la tabla EvaluacionEstudiante
INSERT INTO EvaluacionEstudiante (idEstudiante, idEvaluacion, puntajeObtenido) VALUES
    (1, 1, 85),
    (2, 2, 90),
    (3, 3, 75),
    (4, 4, 80),
    (5, 5, 95),
    (6, 6, 85),
    (7, 7, 70),
    (8, 8, 75),
    (9, 9, 85),
    (10, 10, 90),
    (11, 11, 80),
    (12, 12, 95),
    (13, 13, 85),
    (14, 14, 70),
    (15, 15, 75);
