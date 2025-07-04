drop database freedb_alfombras;
CREATE DATABASE freedb_alfombras;
USE freedb_alfombras;

CREATE TABLE telas (
  `id_tela` INT AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `uso` ENUM('base', 'fondo') NOT NULL,
  `ancho_fabrica` DOUBLE NOT NULL,
  `precio_metro` DOUBLE NOT NULL,
  `precio_m2` DOUBLE,
  PRIMARY KEY (`id_tela`));

CREATE TABLE hilados (
  `id_hilado` INT AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `color` VARCHAR(45),
  `precio_kilo` DOUBLE NOT NULL,
  `consumo_m2` DOUBLE NOT NULL,
  `precio_m2` DOUBLE,
  PRIMARY KEY (`id_hilado`));


CREATE TABLE mano_de_obra (
  `id_trabajo` INT AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `precio_hora` DOUBLE NOT NULL,
  PRIMARY KEY (`id_trabajo`));


CREATE TABLE pegamentos (
  `id_pegamento` INT AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `precio_kilo` DOUBLE NOT NULL,
  `consumo_m2` DOUBLE NOT NULL,
  `precio_m2` DOUBLE,
  PRIMARY KEY (`id_pegamento`));


CREATE TABLE presupuestos (
  `id_presupuesto` INT AUTO_INCREMENT,
  `nombre_cliente` VARCHAR(100) NOT NULL,
  `ancho_alfombra` DOUBLE NOT NULL,
  `largo_alfombra` DOUBLE NOT NULL,
  `id_tela_base` INT NOT NULL,
  `id_tela_fondo` INT NOT NULL,
  `id_hilado` INT NOT NULL,
  `id_pegamento` INT NOT NULL,
  `id_trabajo` INT NOT NULL,
  `precio_total` DOUBLE,
  PRIMARY KEY (`id_presupuesto`)
  );
  
alter table presupuestos 
add constraint fk_presupuestos_telas_base
foreign key(id_tela_base) references telas(id_tela);
  
alter table presupuestos 
add constraint fk_presupuestos_telas_fondo
foreign key(id_tela_fondo) references telas(id_tela);

alter table presupuestos 
add constraint fk_presupuestos_hilados
foreign key(id_hilado) references hilados(id_hilado);

alter table presupuestos 
add constraint fk_presupuestos_pegamentos
foreign key(id_pegamento) references pegamentos(id_pegamento);
  
alter table presupuestos 
add constraint fk_presupuestos_mano_de_obra
foreign key(id_trabajo) references mano_de_obra(id_trabajo);