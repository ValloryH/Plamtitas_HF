CREATE DATABASE IF NOT EXISTS proyecto1;
USE proyecto1;

CREATE TABLE usuario(
    id INT primary KEY auto_increment,
    nombre varchar(255),
    correo varchar(255),
    contraseña text
);
CREATE TABLE articulos(
    id INT primary key auto_increment,
    nombre varchar(255),
    fecha date,
    contenido text,
    foto text,
    autor int,
    FOREIGN KEY (autor) REFERENCES usuario(id)
);
INSERT INTO usuario(nombre, correo, contraseña) values ("Fabricio", "fabricio@idt.com.py", "12345");

INSERT into articulos(nombre, fecha, contenido, foto, autor) values (
    "Desde la base de datos", "2024-08-08", "Lorem ipsum", 
    "https://aguacatec.es/wp-content/uploads/2023/10/e5a978b8-6772-4c85-a50e-15581af7d483.png", 1);