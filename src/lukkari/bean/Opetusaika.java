package lukkari.bean;
public class Opetusaika {

	private String paiva;
	private String alku;
	private String loppu;

	public Opetusaika() {
		//
	}

	public Opetusaika(String viikonpaiva, String alku, String loppu) {
		super();
		this.paiva = viikonpaiva;
		this.alku = alku;
		this.loppu = loppu;
	}

	public String getViikonpaiva() {
		return paiva;
	}

	public String getAlku() {
		return alku;
	}

	public String getLoppu() {
		return loppu;
	}

	public void setViikonpaiva(String viikonpaiva) {
		this.paiva = viikonpaiva;
	}

	public void setAlku(String alku) {
		this.alku = alku;
	}

	public void setLoppu(String loppu) {
		this.loppu = loppu;
	}

	@Override
	public String toString() {
		return "Opetusaika [viikonpaiva=" + paiva + ", alku=" + alku + ", loppu=" + loppu + "]";
	}
}
