package salmantino.es.controlador.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pedidos",schema="GestionPedidosBD")
public class Pedido {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idPedido")
	int idPedido;
	
	
	@Column(name="numpedido")
	String  numpedido;
	@Column(name="fecha")
	String fecha;
	@Column(name="importe")
	double importe;
	@Column(name="descuento")
	double descuento;
	@Column(name="idCliente")
	int idCliente;
	 

}
