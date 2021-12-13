package salmantino.es.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import salmantino.es.controlador.entity.Articulo;
import salmantino.es.controlador.entity.Cliente;
@Service
public class ArticuloDAOClase implements ArticuloDAO{

	@Override
	@Transactional
	public List<Articulo> getArticulos() {
		
		Session miSession=sessionFactory.getCurrentSession();
		Query<Articulo> miQuery=miSession.createQuery("from Articulos",Articulo.class);
		List<Articulo> articulo=miQuery.getResultList();
		return articulo;
	}
		private SessionFactory sessionFactory;

@Override
@Transactional
public void insertarArticulos(Articulo elArticulo) {
	Session miSession=sessionFactory.getCurrentSession();
	miSession.saveOrUpdate(elArticulo); 
	
}


@Override
@Transactional
public Articulo getArticulos(int id) {
	
	Session miSession=sessionFactory.getCurrentSession();
	
	Articulo elarticulo=miSession.get(Articulo.class, id);
	
	return elarticulo;
}

@Override
@Transactional
public void eliminarArticulos(int id) {
	
	Session miSession=sessionFactory.getCurrentSession();
	Query consulta=miSession.createQuery("delete from Articulos where id=:idArticulo");
	consulta.setParameter("idArticulo",id);
	consulta.executeUpdate();  
}

}
