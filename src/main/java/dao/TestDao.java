package dao;

import java.util.List;

import metier.entities.Produit;

public class TestDao {
	public static void main(String[] args) {
		ProduitDaoImpl dao = new ProduitDaoImpl();
//		Produit p1 = dao.save(new Produit("HP 6580", 483, 45));
//		Produit p2 = dao.save(new Produit("Imprimante Epson 739", 1999, 12));
//		Produit p3 = dao.save(new Produit("PC Mac pro H33", 3399, 22));
//		System.out.println(p1.toString());
		List<Produit> products  = dao.produitsParMC("%3%");
		System.out.println("Chercher des produits");
		for (Produit p:products) {
			System.out.println(p.toString());
		}
	}
}
