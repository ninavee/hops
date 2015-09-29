package lukkari.bean;

public class Opettaja {

	private int id;
	private String etu;
	private String suku;

	public Opettaja() {
		//
	}

	public Opettaja(int id, String etu, String suku) {
		super();
		this.id = id;
		this.etu = etu;
		this.suku = suku;
	}

	public int getId() {
		return id;
	}

	public String getEtu() {
		return etu;
	}

	public String getSuku() {
		return suku;
	}

	public void setId(int id) {
		this.id = id;
	}

	public void setEtu(String etu) {
		this.etu = etu;
	}

	public void setSuku(String suku) {
		this.suku = suku;
	}

	@Override
	public String toString() {
		return "Opettaja [id=" + id + ", etu=" + etu + ", suku=" + suku + "]";
	}

}
