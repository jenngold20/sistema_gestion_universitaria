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
    ('Departamento de Informática', '123-456-7899');
    
    
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
    ('Elena', 'Rodríguez', 'Informática');
    
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
    (10, 10, '2022-01-01', NULL);
    
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
    ('Programación en Java', 3);
    
    
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
    ('Aula 110', 35);
    
    
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
    ('Informática', 3);
    
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
    ('Diego', 'Flores', '2000-10-15');   
    
    
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
    (10, 10, 2022);
    
    
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
    (10, 10, 2022);