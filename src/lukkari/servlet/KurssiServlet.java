package lukkari.servlet;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import lukkari.bean.*;

@WebServlet("/lisaa_poista_kurssi")
public class KurssiServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private ArrayList<Lukkarikurssi> kurssitTI = new ArrayList<>(); // Tiistain kurssit
	private ArrayList<Lukkarikurssi> kurssitTO = new ArrayList<>(); // Torstain kurssit
	private ArrayList<Kurssi> lukkarilista = new ArrayList<>();
	private boolean alustus = true;
	private Kurssi kurssi = null;
	
	public KurssiServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		if (alustus) {
			ArrayList<Opetusaika> aikalista = new ArrayList<>();
			aikalista.add(new Opetusaika("Ti", "08:00", "10:45"));
			aikalista.add(new Opetusaika("To", "09:00", "11:45"));
			kurssi = new Kurssi("1", "Softalaprojekti I", "SWD4TN005", "12", "5012", "Rainio Ohto", aikalista);		
			alustus = false;
		}
		
		if (request.getParameter("poista") != null) {
			lukkarilista.remove(kurssi);
			kurssitTI.clear();
			kurssitTO.clear();
		} else if (request.getParameter("lisaa") != null && !lukkarilista.contains(kurssi)) {		
			lukkarilista.add(kurssi);
			for (Kurssi k : lukkarilista) {
				for (Opetusaika a : k.getAikalista()) {
					if (a.getViikonpaiva().equals("Ti")) {
						kurssitTI.add(new Lukkarikurssi(k.getId(), a.getAlku() + "-" + a.getLoppu(), k.getNimi(),
								k.getTunnus(), k.getToteutus(), k.getVastuuope(), k.getLuokka()));
					}
				}
				for (Opetusaika a : k.getAikalista()) {
					if (a.getViikonpaiva().equals("To")) {
						kurssitTO.add(new Lukkarikurssi(k.getId(), a.getAlku() + "-" + a.getLoppu(), k.getNimi(),
								k.getTunnus(), k.getToteutus(), k.getVastuuope(), k.getLuokka()));
					}
				}
			}
		} else if (request.getParameter("ilmoittaudu") != null) {
			kurssitTI.get(0).setKasittelytila("Ilmoittauduttu");
			kurssitTO.get(0).setKasittelytila("Ilmoittauduttu");
		}
		request.setAttribute("kurssitTI", kurssitTI);
		request.setAttribute("kurssitTO", kurssitTO);
		request.getRequestDispatcher("index.jsp").forward(request, response);
	}
}
