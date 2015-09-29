package lukkari.bean;

import java.util.ArrayList;

public class Kurssi {

	private String id;
	private String nimi;
	private String tunnus;
	private String toteutus;
	private String luokka;
	private String vastuuope;
	private ArrayList<Opetusaika> aikalista;

	public Kurssi() {
		//
	}

	public Kurssi(String id, String nimi, String tunnus, String toteutus, String luokka, String vastuuope,
			ArrayList<Opetusaika> aikalista) {
		super();
		this.id = id;
		this.nimi = nimi;
		this.tunnus = tunnus;
		this.toteutus = toteutus;
		this.luokka = luokka;
		this.vastuuope = vastuuope;
		this.aikalista = aikalista;
	}

	public String getId() {
		return id;
	}

	public String getNimi() {
		return nimi;
	}

	public String getTunnus() {
		return tunnus;
	}

	public String getToteutus() {
		return toteutus;
	}
	
	public String getLuokka() {
		return luokka;
	}

	public String getVastuuope() {
		return vastuuope;
	}

	public ArrayList<Opetusaika> getAikalista() {
		return aikalista;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setNimi(String nimi) {
		this.nimi = nimi;
	}

	public void setTunnus(String tunnus) {
		this.tunnus = tunnus;
	}

	public void setToteutus(String toteutus) {
		this.toteutus = toteutus;
	}

	public void setLuokka(String luokka) {
		this.luokka = luokka;
	}
	
	public void setVastuuope(String vastuuope) {
		this.vastuuope = vastuuope;
	}

	public void setAikalista(ArrayList<Opetusaika> aikalista) {
		this.aikalista = aikalista;
	}

	@Override
	public String toString() {
		return "Kurssi [id=" + id + ", nimi=" + nimi + ", tunnus=" + tunnus + ", toteutus=" + toteutus + ", luokka=" + luokka + ", vastuuope="
				+ vastuuope + ", aikalista=" + aikalista + "]";
	}

}
