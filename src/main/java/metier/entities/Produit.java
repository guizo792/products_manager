package metier.entities;

import java.io.Serializable;

public class Produit implements Serializable {
	private Long id;
	private String designation;
	private Double prix;
	private int quantite;
	public Produit() {
		
	}
	public Produit(String designation, double prix, int quantite) {
		super();
		this.designation = designation;
		this.prix = prix;
		this.quantite = quantite;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}
	public Double getPrix() {
		return prix;
	}
	public void setPrix(Double prix) {
		this.prix = prix;
	}
	public int getQuantite() {
		return quantite;
	}
	public void setQuantite(int quantite) {
		this.quantite = quantite;
	}
	@Override
	public String toString() {
		return "Produit [id="+id+", designation="+designation+", prix="+prix+", quantite="+quantite+"]";
	}
	
	

}
