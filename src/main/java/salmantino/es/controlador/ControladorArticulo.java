package salmantino.es.controlador;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import salmantino.es.controlador.entity.Articulo;
import salmantino.es.dao.ArticuloDAO;

@Controller
@RequestMapping("/articulo")
public class ControladorArticulo {

@RequestMapping("/listaArticulos")
public String listaPedidos(Model elModelo) {
List<Articulo> losArticulos=articuloDAO.getArticulos();
elModelo.addAttribute("articulos",losArticulos);

return "lista-Articulos";
}

@RequestMapping("/muestraFormularioAgregarArticulo")
public String muestraFormularioAgregar(Model elModelo) {
Articulo elPedido = new Articulo();
elModelo.addAttribute("articulo",elPedido);
return "formularioArticulo";
}

@GetMapping("/eliminarArticulo")
public String eliminarArticulos(@RequestParam("idArticulo") int Id)
{
articuloDAO.eliminarArticulos(Id);

return "redirect:/pedido/listapedidos";
}

@Autowired
private ArticuloDAO articuloDAO;

}