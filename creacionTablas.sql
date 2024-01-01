-- Creación de la base de datos
CREATE DATABASE IF NOT EXISTS sistema_gestion_universitaria;
USE sistema_gestion_universitaria;

-- Creación de la tabla Departamento
CREATE TABLE IF NOT EXISTS Departamento (
    idDepartamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    teléfono VARCHAR(15) NOT NULL
);

-- Creación de la tabla Profesor
CREATE TABLE IF NOT EXISTS Profesor (
    idProfesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    especialidad VARCHAR(255) NOT NULL
);

-- Creación de la tabla Profesor_Departamento
CREATE TABLE IF NOT EXISTS Profesor_Departamento (
    idProfesor_Departamento INT AUTO_INCREMENT PRIMARY KEY,
    idProfesor INT NOT NULL,
    idDepartamento INT NOT NULL,
    desde_fecha DATE NOT NULL,
    hasta_fecha DATE,
    FOREIGN KEY (idProfesor) REFERENCES Profesor(idProfesor),
    FOREIGN KEY (idDepartamento) REFERENCES Departamento(idDepartamento)
);

-- Creación de la tabla Asignatura
CREATE TABLE IF NOT EXISTS Asignatura (
    idAsignatura INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    créditos INT NOT NULL
);

-- Creación de la tabla Aula
CREATE TABLE IF NOT EXISTS Aula (
    idAula INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    capacidad INT NOT NULL
);

-- Creación de la tabla Curso
CREATE TABLE IF NOT EXISTS Curso (
    idCurso INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    créditos INT NOT NULL
);

-- Creación de la tabla Estudiante
CREATE TABLE IF NOT EXISTS Estudiante (
    idEstudiante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

-- Creación de la tabla Matricula
CREATE TABLE IF NOT EXISTS Matricula (
    idMatricula INT AUTO_INCREMENT PRIMARY KEY,
    idEstudiante INT NOT NULL,
    idCurso INT NOT NULL,
    año INT NOT NULL,
    FOREIGN KEY (idEstudiante) REFERENCES Estudiante(idEstudiante),
    FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);

-- Creación de la tabla Profesor_Asignatura
CREATE TABLE IF NOT EXISTS Profesor_Asignatura (
    idProfesor_Asignatura INT AUTO_INCREMENT PRIMARY KEY,
    idProfesor INT NOT NULL,
    idAsignatura INT NOT NULL,
    año INT NOT NULL,
    FOREIGN KEY (idProfesor) REFERENCES Profesor(idProfesor),
    FOREIGN KEY (idAsignatura) REFERENCES Asignatura(idAsignatura)
    
);