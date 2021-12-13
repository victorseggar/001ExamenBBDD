CREATE DATABASE  IF NOT EXISTS gestionPedidosBD;
USE gestionPedidosBD;
DROP TABLE IF EXISTS cliente;
DROP TABLE IF exists GestionPedidosBD;
CREATE TABLE cliente (
  id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(35) DEFAULT NULL,
  apellido varchar(35) DEFAULT NULL,
  email varchar(45) DEFAULT NULL
  
) ENGINE=InnoDB AUTO_INCREMENT=6;


CREATE TABLE GestionPedidosBD (
 id int(10) NOT NULL AUTO_INCREMENT PRIMARY KEY,
 numpedido varchar(6) not null,
 fecha date not null,
 importe float not null,
 descuento float not null,
 foreign key(id) references clientes  (idCliente)
 );
LOCK TABLES cliente WRITE;
LOCK TABLES gestionpedidosbd WRITE;


INSERT INTO cliente VALUES 
	(1,'David','Martinez','david@amazon.es'),
	(2,'Sandra','López','sandra@amazon.es'),
	(3,'María','Gómez','maria@amazon.es'),
	(4,'Antonio','Fernández','antonio@amazon.es'),
	(5,'Alicia','Martín','alicia@amazon.es');

UNLOCK TABLES;

select * from cliente;