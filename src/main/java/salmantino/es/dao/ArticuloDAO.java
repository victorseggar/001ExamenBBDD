package salmantino.es.dao;

import java.util.List;

import salmantino.es.controlador.entity.Articulo;


public interface ArticuloDAO {
	
	public List<Articulo> getArticulos();

	public void insertarArticulos(Articulo elArticulo);

	public Articulo getArticulos(int id);

	public void eliminarArticulos(int id);
}
