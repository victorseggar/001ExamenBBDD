package salmantino.es.controlador.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


	@Entity
	@Table(name="PedidoCliente",schema="gestionPedidosBD")
	public class PedidoCliente {
		@Id
		@GeneratedValue(strategy=GenerationType.IDENTITY)
		@Column(name="id")
		private int id;
		
		@Column(name="nombre")
		private String nombre;
		
		@Column(name="apellido")
		private String apellido;
		
		@Column(name="email")
		private String email;
		
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
		
		public PedidoCliente() {
			// TODO Auto-generated constructor stub
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public String getNombre() {
			return nombre;
		}

		public void setNombre(String nombre) {
			this.nombre = nombre;
		}

		public String getApellido() {
			return apellido;
		}

		public void setApellido(String apellido) {
			this.apellido = apellido;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public int getIdPedido() {
			return idPedido;
		}

		public void setIdPedido(int idPedido) {
			this.idPedido = idPedido;
		}

		public String getNumpedido() {
			return numpedido;
		}

		public void setNumpedido(String numpedido) {
			this.numpedido = numpedido;
		}

		public String getFecha() {
			return fecha;
		}

		public void setFecha(String fecha) {
			this.fecha = fecha;
		}

		public double getImporte() {
			return importe;
		}

		public void setImporte(double importe) {
			this.importe = importe;
		}

		public double getDescuento() {
			return descuento;
		}

		public void setDescuento(double descuento) {
			this.descuento = descuento;
		}

		public int getIdCliente() {
			return idCliente;
		}

		public void setIdCliente(int idCliente) {
			this.idCliente = idCliente;
		}

		@Override
		public String toString() {
			return "PedidoCliente [id=" + id + ", nombre=" + nombre + ", apellido=" + apellido + ", email=" + email
					+ ", idPedido=" + idPedido + ", numpedido=" + numpedido + ", fecha=" + fecha + ", importe="
					+ importe + ", descuento=" + descuento + ", idCliente=" + idCliente + "]";
		}

		
		
}
