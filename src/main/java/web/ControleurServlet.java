package web;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.connector.Response;

import dao.IProduitDao;
import dao.ProduitDaoImpl;
import metier.entities.Produit;

@WebServlet(name = "cs", urlPatterns = { "/controller", "*.do" })
public class ControleurServlet extends HttpServlet {
	private IProduitDao metier;
	
	@Override
	public void init() throws ServletException {
		metier = new ProduitDaoImpl();
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		if (path.equals("/index.do")) {
			req.getRequestDispatcher("produits.jsp").forward(req, resp);
		} else if (path.equals("/chercher.do")) {
			String motCle = req.getParameter("motCle");
			System.out.println(motCle);
			ProduitModel model = new ProduitModel();
			model.setMotCle(motCle);
			List<Produit> produits = metier.produitsParMC("%"+motCle+"%");
			System.out.println(produits);
			model.setProduits(produits);
			req.setAttribute("model", model);
			req.getRequestDispatcher("produits.jsp").forward(req, resp);
		}else {
			resp.sendError(Response.SC_NOT_FOUND);
		}
	}
}
