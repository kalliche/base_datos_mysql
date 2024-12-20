-- inserat registros a la tabla authors
SELECT * FROM authors;

INSERT INTO authors (name, nationality) VALUES
('Gabriel García Márquez', 'COL'),
('J.K. Rowling', 'GBR'),
('George Orwell', 'GBR'),
('Miguel de Cervantes', 'ESP'),
('Haruki Murakami', 'JPN'),
('Isabel Allende', 'CHL'),
('J.R.R. Tolkien', 'GBR'),
('Jane Austen', 'GBR'),
('Leo Tolstoy', 'RUS'),
('Fyodor Dostoevsky', 'RUS'),
('Mark Twain', 'USA'),
('Ernest Hemingway', 'USA'),
('Victor Hugo', 'FRA'),
('Charles Dickens', 'GBR'),
('Franz Kafka', 'CZE'),
('Agatha Christie', 'GBR'),
('Edgar Allan Poe', 'USA'),
('Arthur Conan Doyle', 'GBR'),
('Homer', 'GRC'),
('Dante Alighieri', 'ITA');

-- Inseret books
SELECT * FROM books b ;

INSERT INTO books (author_id, title, year, language, cover_url, price, sellable, description) VALUES
(1, 'Cien Años de Soledad', 1967, 'ES', 'url1', 25.99, 1, 'Una obra maestra de Gabriel García Márquez.'),
(1, 'El Amor en los Tiempos del Cólera', 1985, 'ES', 'url2', 22.50, 1, 'Una historia de amor memorable.'),
(2, 'Harry Potter y la Piedra Filosofal', 1997, 'EN', 'url3', 19.99, 1, 'Primera entrega de la saga Harry Potter.'),
(2, 'Harry Potter y la Cámara Secreta', 1998, 'EN', 'url4', 21.99, 1, 'Segunda entrega de la saga.'),
(3, '1984', 1949, 'EN', 'url5', 15.99, 1, 'Distopía de George Orwell.'),
(3, 'Rebelión en la Granja', 1945, 'EN', 'url6', 12.99, 1, 'Novela satírica sobre la política.'),
(4, 'Don Quijote de la Mancha', 1605, 'ES', 'url7', 29.99, 1, 'Obra maestra de la literatura española.'),
(5, 'Norwegian Wood', 1987, 'JP', 'url8', 18.75, 1, 'Una novela de Murakami.'),
(5, 'Kafka en la Orilla', 2002, 'JP', 'url9', 20.50, 1, 'Otra obra destacada de Murakami.'),
(6, 'La Casa de los Espíritus', 1982, 'ES', 'url10', 23.50, 1, 'Novela de Isabel Allende.'),
(6, 'Eva Luna', 1987, 'ES', 'url11', 19.00, 1, 'Otra obra de Allende.'),
(7, 'El Hobbit', 1937, 'EN', 'url12', 22.00, 1, 'Precuela de El Señor de los Anillos.'),
(7, 'El Señor de los Anillos', 1954, 'EN', 'url13', 35.00, 1, 'Trilogía épica de Tolkien.'),
(8, 'Orgullo y Prejuicio', 1813, 'EN', 'url14', 18.99, 1, 'Novela romántica de Jane Austen.'),
(9, 'Guerra y Paz', 1869, 'RU', 'url15', 32.99, 1, 'Novela histórica de Tolstoy.'),
(10, 'Crimen y Castigo', 1866, 'RU', 'url16', 24.99, 1, 'Una obra psicológica de Dostoevsky.'),
(11, 'Las Aventuras de Tom Sawyer', 1876, 'EN', 'url17', 17.50, 1, 'Novela juvenil de Mark Twain.'),
(12, 'El Viejo y el Mar', 1952, 'EN', 'url18', 15.99, 1, 'Novela de Ernest Hemingway.'),
(13, 'Los Miserables', 1862, 'FR', 'url19', 30.00, 1, 'Novela épica de Victor Hugo.'),
(14, 'Grandes Esperanzas', 1861, 'EN', 'url20', 21.99, 1, 'Novela de Charles Dickens.');

SELECT * FROM books b ;

INSERT INTO clients (name, email, birthdate, gender) VALUES
('Juan Pérez', 'juan.perez@gmail.com', '1990-05-14', 'M'),
('Ana Gómez', 'ana.gomez@hotmail.com', '1985-08-22', 'F'),
('Luis Martínez', 'luis.martinez@yahoo.com', '1992-01-10', 'M'),
('Carla Torres', 'carla.torres@gmail.com', '1994-11-05', 'F'),
('Sofía López', 'sofia.lopez@outlook.com', '1998-03-12', 'F'),
('Pedro Sánchez', 'pedro.sanchez@gmail.com', '1987-02-18', 'M'),
('Lucía Herrera', 'lucia.herrera@gmail.com', '1995-09-21', 'F'),
('Mateo Ramírez', 'mateo.ramirez@gmail.com', '2000-12-15', 'M'),
('Camila Ortiz', 'camila.ortiz@gmail.com', '1991-04-30', 'F'),
('Felipe Castro', 'felipe.castro@gmail.com', '1993-11-01', 'M');

INSERT INTO operations (book_id, client_id, status, finshed) VALUES
(1, 1, 'V', 1),
(2, 2, 'P', 0),
(3, 3, 'V', 1),
(4, 4, 'P', 0),
(5, 5, 'V', 1),
(6, 6, 'D', 1),
(7, 7, 'P', 0),
(8, 8, 'V', 1),
(9, 9, 'D', 1),
(10, 10, 'P', 0),
(11, 1, 'V', 1),
(12, 2, 'P', 0),
(13, 3, 'V', 1),
(14, 4, 'D', 1),
(15, 5, 'P', 0),
(16, 6, 'V', 1),
(17, 7, 'D', 1),
(18, 8, 'P', 0),
(19, 9, 'V', 1),
(20, 10, 'P', 0);


SELECT * FROM operations o ;


INSERT INTO operations (operation_id, book_id, client_id, status, finshed) VALUES
(21, 21, 11, 'P', 0),
(22, 22, 12, 'D', 1),
(23, 23, 13, 'V', 1),
(24, 24, 14, 'P', 0),
(25, 25, 15, 'D', 1),
(26, 26, 16, 'V', 1),
(27, 27, 17, 'P', 0),
(28, 28, 18, 'D', 1),
(29, 29, 19, 'V', 1),
(30, 30, 20, 'P', 0),
(31, 31, 21, 'D', 1),
(32, 32, 22, 'V', 1),
(33, 33, 23, 'P', 0),
(34, 34, 24, 'D', 1),
(35, 35, 25, 'V', 1),
(36, 36, 26, 'P', 0),
(37, 37, 27, 'D', 1),
(38, 38, 28, 'V', 1),
(39, 39, 29, 'P', 0),
(40, 40, 30, 'D', 1);

INSERT INTO clients (client_id, name, email, birthdate, gender, active) VALUES
(11, 'Juan Pérez', 'juan.perez@example.com', '1990-05-12', 'M', 1),
(12, 'María González', 'maria.gonzalez@example.com', '1988-08-22', 'F', 1),
(13, 'Carlos Ramírez', 'carlos.ramirez@example.com', '1995-03-15', 'M', 1),
(14, 'Laura Martínez', 'laura.martinez@example.com', '1992-11-30', 'F', 1),
(15, 'Ana López', 'ana.lopez@example.com', '2000-02-05', 'F', 1),
(16, 'Pedro Sánchez', 'pedro.sanchez@example.com', '1985-07-18', 'M', 1),
(17, 'Sofía Torres', 'sofia.torres@example.com', '1998-01-10', 'F', 1),
(18, 'Javier Ruiz', 'javier.ruiz@example.com', '1993-06-25', 'M', 1),
(19, 'Isabel Morales', 'isabel.morales@example.com', '1989-12-09', 'F', 1),
(20, 'David Gómez', 'david.gomez@example.com', '1991-09-14', 'M', 1),
(21, 'Lucía Herrera', 'lucia.herrera@example.com', '1997-04-02', 'F', 1),
(22, 'Miguel Vargas', 'miguel.vargas@example.com', '1994-08-19', 'M', 1);


INSERT INTO books (book_id, author_id, title, year, language, cover_url, price, sellable, description) VALUES
(21, 1, 'Don Quijote de la Mancha', 1605, 'es', 'http://covers.com/quijote.jpg', 15.99, 1, 'La obra maestra de Miguel de Cervantes.'),
(22, 2, 'Cien años de soledad', 1967, 'es', 'http://covers.com/soledad.jpg', 18.50, 1, 'Una novela icónica de Gabriel García Márquez.'),
(23, 3, 'El amor en los tiempos del cólera', 1985, 'es', 'http://covers.com/colera.jpg', 12.99, 1, 'Una historia de amor épica.'),
(24, 4, 'Rayuela', 1963, 'es', 'http://covers.com/rayuela.jpg', 17.25, 1, 'Una obra revolucionaria de Julio Cortázar.'),
(25, 5, 'La sombra del viento', 2001, 'es', 'http://covers.com/sombra.jpg', 14.75, 1, 'Novela de Carlos Ruiz Zafón.'),
(26, 6, 'Fahrenheit 451', 1953, 'en', 'http://covers.com/fahrenheit.jpg', 13.99, 1, 'Obra distópica de Ray Bradbury.'),
(27, 7, '1984', 1949, 'en', 'http://covers.com/1984.jpg', 14.99, 1, 'Novela de George Orwell.'),
(28, 8, 'Crimen y castigo', 1866, 'ru', 'http://covers.com/crimen.jpg', 16.50, 1, 'Fiódor Dostoyevski.'),
(29, 9, 'Orgullo y prejuicio', 1813, 'en', 'http://covers.com/orgullo.jpg', 12.50, 1, 'De Jane Austen.'),
(30, 10, 'Matar a un ruiseñor', 1960, 'en', 'http://covers.com/ruisenor.jpg', 11.99, 1, 'Novela de Harper Lee.');






