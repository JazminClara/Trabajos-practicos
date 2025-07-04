use alfombras;

INSERT INTO telas (nombre, uso, ancho_fabrica, precio_metro) VALUES
('Lienzo Beige', 'base', 1.5, 1800),
('Lino', 'base', 1.4, 1900),
('Gabardina', 'base', 2.0, 1805.40),
('Tusor', 'base', 1.87, 1515.49),
('Gasa', 'base', 1.80, 1778.63),
('Algodón', 'base', 1.81, 1627.74),
('Rayón', 'base', 1.90, 1457.85),
('Fieltro Gris', 'fondo', 1.6, 2100),
('Pana', 'fondo', 1.61, 1709.27),
('Poliéster', 'fondo', 1.59, 835.33),
('Nylon', 'fondo', 1.76, 953.79),
('Poplin', 'fondo', 1.78, 1911.44),
('Muselina', 'fondo', 1.50, 1295.41);


INSERT INTO hilados (nombre, color, precio_kilo, consumo_m2) VALUES
('Lana', 'Rojo', 2000, 800),
('Acrílico', 'Turquesa', 1500, 600),
('Algodón', 'Natural', 1800, 1100),
('Plum', 'Melange', 1253.38, 0.57),
('Hilado sent', 'Azul', 2740.56, 1.52),
('Plum', 'Marrón siena', 1924.24, 0.43),
('Algodón', 'Beige papaya', 2384.48, 1.33),
('Lana', 'Salmón oscuro', 1629.68, 1.46),
('Algodón', 'Blanco', 2673.64, 1.14),
('Acrílico', 'Cian', 1842.07, 0.72),
('Lana', 'Amarillo maíz dulce', 2333.89, 0.84),
('Algodón', 'Cian clarto', 2568.93, 0.86),
('Lana', 'Azul anciano', 2013.03, 1.21),
('Acrílico', 'Azul marino', 2620.66, 1.01),
('Algodón', 'Beige mocasín', 2290.77, 0.99),
('Acrílico', 'Marrón caqui', 2984.77, 0.32),
('Lana', 'Blanco humo', 1946.05, 1.15),
('Acrílico', 'Azul medianoche', 2341.19, 1.36),
('Algodón', 'Bisque', 2653.25, 0.34),
('Algodón', 'Cyan oscuro', 1922.05, 1.08);



INSERT INTO pegamentos (nombre, precio_kilo, consumo_m2) VALUES
('Pegamento Universal', 950.20, 120),
('Silicona', 1400.00, 145),
('Pegamento Acuña', 1050.05, 98),
('Unipox', 851.99, 0.38),
('École', 948.98, 0.34),
('Fortex', 669.56, 0.19),
('Fastix', 845.00, 0.39),
('B-700', 612.67, 0.29),
('La gotita', 736.81, 0.15),
('Pritt', 729.62, 0.13),
('Pegamil', 690.75, 0.31),
('El Pulpito', 673.08, 0.33),
('Poximix', 778.39, 0.16),
('Poxi-ran', 990.60, 0.16),
('UHU', 965.74, 0.31);

INSERT INTO mano_de_obra (nombre, precio_hora) VALUES
('Tejido', 1500);


INSERT INTO presupuestos (
  nombre_cliente, ancho_alfombra, largo_alfombra,
  id_tela_base, id_tela_fondo, id_hilado, id_pegamento, id_trabajo) VALUES
('Ana Torres', 2.0, 3.0, 6, 12, 1, 2, 1),
('Luis Rivas', 1.5, 2.5, 6, 10, 20, 1, 1),
('Jorge Díaz', 2.0, 1.8, 2, 11, 19, 3, 1),
('Valeria Cruz', 3.0, 2.5, 3, 10, 4, 15, 1),
('Sofía Luna', 2.5, 2.5, 4, 9, 7, 11, 1),
('Mateo Blanco', 1.2, 1.8, 2, 8, 13, 8, 1),
('Camila Pérez', 2.7, 3.1, 7, 9, 3, 4, 1),
('Lautaro Vega', 1.5, 2.0, 3, 8, 1, 7, 1),
('Lucía Romero', 2.2, 2.9, 1, 11, 10, 6, 1),
('Pedro Suárez', 2.0, 3.0, 4, 10, 16, 13, 1),
('Julieta Ferreyra', 2.4, 1.9, 1, 9, 4, 15, 1),
('Tomás Herrera', 1.8, 2.8, 2, 8, 2, 9, 1),
('Martina Álvarez', 2.1, 2.6, 7, 9, 3, 13, 1),
('Joaquín Medina', 2.9, 3.2, 6, 13, 12, 8, 1),
('Renata Arias', 2.5, 2.5, 1, 10, 2, 11, 1),
('Nicolás Ibarra', 1.3, 2.3, 1, 9, 3, 4, 1),
('Bianca Torres', 2.6, 2.1, 2, 11, 18, 5, 1),
('Simón Guzmán', 1.7, 2.2, 3, 12, 13, 9, 1),
('Daniela Paz', 2.3, 2.0, 3, 12, 19, 12, 1),
('Ángel Benítez', 1.9, 2.7, 5, 9, 8, 4, 1),
('Guadalupe Soto', 2.0, 3.0, 7, 8, 1, 13, 1),
('Dante Leiva', 2.4, 2.4, 5, 11, 4, 15, 1),
('Florencia Díaz', 2.8, 1.5, 6, 10, 6, 14, 1),
('Kevin Roldán', 1.6, 2.6, 2, 13, 7, 9, 1),
('Emilia Silva', 2.5, 2.5, 4, 11, 11, 8, 1),
('Gabriel Ortiz', 2.3, 3.0, 1, 10, 12, 3, 1),
('Ivana Moreno', 2.0, 2.2, 1, 9, 2, 1, 1),
('Ignacio Ruiz', 2.1, 2.8, 3, 8, 1, 2, 1),
('Cecilia Acosta', 2.6, 2.3, 1, 9, 11, 5, 1),
('Maximiliano Fuentes', 2.9, 2.0, 5, 8, 3, 15, 1),
('Laura Bell', 1.36, 4.7, 6, 9, 11, 13, 1),
('Wanda Barrett', 2.15, 1.62, 5, 11, 2, 10, 1),
('Goyo Benjamín Valentín Pareja', 1.43, 3.43, 4, 11, 14, 14, 1),
('Concepción Sabater Valverde', 1.21, 3.28, 3, 13, 10, 6, 1),
('Nélida Garrido Armengol', 2.6, 2.91, 6, 9, 9, 2, 1),
('Eloísa Sanz', 1.83, 2.81, 1, 11, 18, 12, 1);