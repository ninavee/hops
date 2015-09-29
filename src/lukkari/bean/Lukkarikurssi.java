package lukkari.bean;

public class Lukkarikurssi {

	private String id;
	private String aika;
	private String nimi;
	private String tunnus;
	private String toteutus;
	private String vastuuope;
	private String opetustila;
	private String kasittelytila;

	public Lukkarikurssi() {
		super();
	}

	public Lukkarikurssi(String id, String aika, String nimi, String tunnus, String toteutus, String opettajat,
			String luokka) {
		super();
		this.id = id;
		this.aika = aika;
		this.nimi = nimi;
		this.tunnus = tunnus;
		this.toteutus = toteutus;
		this.vastuuope = opettajat;
		this.opetustila = luokka;
		// Alkutila
		this.kasittelytila = "Suunniteltu";
	}

	public String getId() {
		return id;
	}

	public String getAika() {
		return aika;
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

	public String getVastuuope() {
		return vastuuope;
	}

	public String getOpetustila() {
		return opetustila;
	}

	public String getKasittelytila() {
		return kasittelytila;
	}

	public void setId(String id) {
		this.id = id;
	}

	public void setAika(String aika) {
		this.aika = aika;
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

	public void setVastuuope(String vastuuope) {
		this.vastuuope = vastuuope;
	}

	public void setOpetustila(String opetustila) {
		this.opetustila = opetustila;
	}

	public void setKasittelytila(String kasittelytila) {
		this.kasittelytila = kasittelytila;
	}
	
	@Override
	public String toString() {
		return "Lukkarikurssi [id=" + id + ", aika=" + aika + ", nimi=" + nimi + ", tunnus=" + tunnus + ", toteutus="
				+ toteutus + ", vastuuope=" + vastuuope + ", luokka=" + opetustila + "]";
	}
}
