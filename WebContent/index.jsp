<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<link href="css/ui-style.css" rel="stylesheet">
<link rel="shortcut icon" href="favicon.ico">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lukujärjestys</title>
<script type="text/javascript">
if (screen.width <= 800) {
	window.location = "http://www.micronome.com/misc/ui/mobile.html";
}
</script>
</head>
<body ondragstart="return false;" ondrop="return false;">

	<!-- CONTAINER -->
	<div id="container">

		<!-- INFO -->
		<div id="info">
			KIRJAUTUNUT: Pavunvarsi, Jaakko Sakari 1502378 - Koulutusohjelma:
			Tradenomi, tietojenkäsittely (monimuoto)<a href="javascript:void(0);" style="float: right;">KIRJAUDU ULOS</a>
		</div>

		<!-- TIMETABLE -->
		<form action="lisaa_poista_kurssi" method="post">
		<table id="table-timetable">
			<tr>
				<th>Maanantai</th>
				<th>Tiistai</th>
				<th>Keskiviikko</th>
				<th>Torstai</th>
				<th>Perjantai</th>
				<th>Lauantai</th>
				<th>VIRTUAALI</th>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td>
					<c:if test="${not empty kurssitTI}">
						<c:forEach items="${kurssitTI}" var="kurssi">
							<c:set value="${kurssi.kasittelytila}" var="var"/>
							<div id="kurssi<c:out value='${kurssi.id}'/>" class="<c:out value="${var == 'Suunniteltu' ? 'box-red': 'box-yellow'}"/>">
								<c:out value="${kurssi.aika}"/><hr>
								<c:out value="${kurssi.nimi}"/><br>
								<c:out value="${kurssi.tunnus}"/>-<c:out value="${kurssi.toteutus}"/><br>
								<c:out value="${kurssi.vastuuope}"/><br>
								<c:out value="${kurssi.opetustila}"/><br><br>
								<c:out value="${kurssi.kasittelytila}"/>
							</div>
						</c:forEach>
					</c:if>
				</td>
				<td>&nbsp;</td>
				<td>
					<c:if test="${not empty kurssitTO}">
						<c:forEach items="${kurssitTO}" var="kurssi">
							<c:set value="${kurssi.kasittelytila}" var="var"/>
							<div id="kurssi<c:out value='${kurssi.id}'/>" class="<c:out value="${var == 'Suunniteltu' ? 'box-red': 'box-yellow'}"/>">
								<c:out value="${kurssi.aika}"/><hr>
								<c:out value="${kurssi.nimi}"/><br>
								<c:out value="${kurssi.tunnus}"/>-<c:out value="${kurssi.toteutus}"/><br>
								<c:out value="${kurssi.vastuuope}"/><br>
								<c:out value="${kurssi.opetustila}"/><br><br>
								<c:out value="${kurssi.kasittelytila}"/>
							</div>
						</c:forEach>
					</c:if>
				</td>
				<td>&nbsp;</td>
				<td>&nbsp;</td>
				<td></td>
			</tr>
			<tr>
				<td><button id="ilmoittaudu" name="ilmoittaudu" value="1" onclick="window.confirm('ILMOITTAUTUMINEN\n\nIlmoittaudutaan KAIKILLE Suunniteltu-tilan (punaiset) kursseille.');">ILMOITTAUDU</button></td>
				<td id="pikaopas" colspan="5"></td>
				<td><button type="submit" id="tyhjenna" name="poista" value="1" onclick="window.confirm('PERUUTTAMINEN\n\nPeruutetaan KAIKKI Ilmoittauduttu-tilan (keltaiset) ja Suunniteltu-tilan (punaiset) kurssit.');">PERUUTA KAIKKI</button></td>
			</tr>
		</table>
		</form>

		<!-- KURSSILISTAN SUODATTIMET -->
		<table id="table-filters">
			<tr>
				<td>
					<select>
						<option value="code">Järjestä nimen mukaan</option>
						<option class="droplist" value="code">Järjestä tunnuksen mukaan</option>
					</select>
				</td>
				<td>
					<select>
						<option value="alla">Kaikki koulutusohjelmat</option>
						<option value="heti">Tietojenkäsittelyn koulutusohjelma</option>
						<option value="heli">Liiketalouden koulutusohjelma</option>
						<option value="assi">Johdon assistentin koulutusohjelma</option>
						<option value="myyn">Myynnin ja markkinoinnin koulutusohjelma</option>
					</select>
				</td>
				<td>
					<select>
						<option value="alla">Kaikki opetusmuodot</option>
						<option value="lahi">Lähiopetus</option>
						<option value="mult">Monimuoto</option>
						<option value="eta">Etäopetus</option>
					</select>
				</td>
				<td>
					<select>
						<option value="alla">Kaikki toimipisteet</option>
						<option value="pasi">Pasilan toimipiste</option>
						<option value="malm">Malmin toimipiste</option>
					</select>
				</td>
				<td>
					<select>
						<option value="alla">Kaikki opetusajat</option>
						<option value="ma08">Maanantai 08:00-12:00</option>
						<option value="ma12">Maanantai 12:00-16:00</option>
						<option value="ma17">Maanantai 16:00-20:30</option>
						<option value="ti08">Tiistai 08:00-12:00</option>
						<option value="ti12">Tiistai 12:00-16:00</option>
						<option value="ti17">Tiistai 16:00-20:30</option>
						<option value="ke08">Keskiviikko 08:00-12:00</option>
						<option value="ke12">Keskiviikko 12:00-16:00</option>
						<option value="ke17">Keskiviikko 16:00-20:30</option>
						<option value="to08">Torstai 08:00-12:00</option>
						<option value="to12">Torstai 12:00-16:00</option>
						<option value="to17">Torstai 16:00-20:30</option>
						<option value="pe08">Perjantai 08:00-12:00</option>
						<option value="pe12">Perjantai 12:00-18:00</option>
						<option value="code">Muut ajankohdat</option>
					</select>
				</td>
			</tr>
		</table>

		<form action="lisaa_poista_kurssi" method="post">
			<table id="table-courses">
				<tr>
					<th>Kurssinimi</th><th>Kurssitunnus</th><th>OP</th><th>Ohjelma</th><th>Muoto</th><th>Toimipiste</th><th>Opettaja</th><th>Alkaa</th><th>Loppuu</th><th>Opetusajat</th><th>&nbsp;</th>
				</tr>
				<tr id="rivi1">
					<td>Softalaprojekti I</td>
					<td>SWD4TN005-12</td>
					<td>9</td>
					<td>HETI</td>
					<td>LÄHI</td>
					<td>Pasila</td>
					<td>Ohto Rainio</td>
					<td>24.8.2015</td>
					<td>18.12.2015</td>
					<td>Ti 08:00-10:45, To 09:00-11:45</td>
					<td><button id="add1" class="lisaa-painike" type="submit" name="lisaa" value="Softalaprojekti I"></button></td>
				</tr>
				<tr id="rivi2">
					<td>Liiketoimintaprosessit</td>
					<td>BUS4TA013-23</td>
					<td>6</td>
					<td>HETI</td>
					<td>VIR</td>
					<td>Pasila</td>
					<td>Immo Hahtola</td>
					<td>24.8.2015</td>
					<td>18.12.2015</td>
					<td>&nbsp;</td>
					<td></td>
				</tr>
				<tr id="rivi3">
					<td>Tietokannan sunnittelu ja toteutus</td>
					<td>SWD4TN008-8</td>
					<td>3</td>
					<td>HETI</td>
					<td>VIR</td>
					<td>Pasila</td>
					<td>Outi Virkki</td>
					<td>24.8.2015</td>
					<td>18.10.2015</td>
					<td>&nbsp;</td>
					<td></td>
				</tr>
				<tr id="rivi4">
					<td>Transaktion hallinta</td>
					<td>SWD4TN002-15</td>
					<td>3</td>
					<td>HETI</td>
					<td>LÄHI</td>
					<td>Pasila</td>
					<td>Seija Lahtinen</td>
					<td>24.8.2015</td>
					<td>18.10.2015</td>
					<td>Pe 17:40-20:30</td>
					<td></td>
				</tr>
				<tr id="rivi5">
					<td>Internet-oikeus</td>
					<td>LAW8LS033-24</td>
					<td>3</td>
					<td>ASSI</td>
					<td>MONI</td>
					<td>Pasila</td>
					<td>Mia Lahtela</td>
					<td>24.8.2015</td>
					<td>18.12.2015</td>
					<td>To 12:00-13:45</td>
					<td></td>
				</tr>
				<tr id="rivi6">
					<td>HR-Tietojärjestelmät</td>
					<td>LEA3LH002-7</td>
					<td>3</td>
					<td>HELI</td>
					<td>LÄHI</td>
					<td>Pasila</td>
					<td>Tuula Kinnunen, Martin Stenberg</td>
					<td>24.8.2015</td>
					<td>16.10.2015</td>
					<td>Ma 10:00-13:45</td>
					<td></td>
				</tr>
				<tr id="rivi7">
					<td>Kilpailuoikeus</td>
					<td>LAW5LH001-10</td>
					<td>3</td>
					<td>HELI</td>
					<td>MONI</td>
					<td>Malmi</td>
					<td>Christina Karlia-Palomäki</td>
					<td>26.10.2015</td>
					<td>18.12.2015</td>
					<td>To 10:00-12:45</td>
					<td></td>
				</tr>
			</table>
		</form>

		<div style="line-height: 25px; width: 100%; text-align: center; font-size: 14px;">
			<div
				style="display: inline-block; color: #FFFFFF; margin-top: 8px; font: normal 12px 'Verdana'; text-shadow: 1px 1px #696969;">
				&lt;&lt;&nbsp;<a href="javascript:void(0);">EDELLISET</a>
			</div>
				&nbsp;&nbsp;&nbsp;<a href="javascript:void(0);">1</a>&nbsp;<a
				href="javascript:void(0);">2</a>&nbsp;<span
				style="font-weight: bold;">3</span>&nbsp;<a
				href="javascript:void(0);">4</a>&nbsp;<a href="javascript:void(0);">5</a>&nbsp;&nbsp;&nbsp;
			<div
				style="display: inline-block; color: #FFFFFF; margin-top: 8px; font: normal 12px 'Verdana'; text-shadow: 1px 1px #696969;">
				<a href="javascript:void(0);">SEURAAVAT</a>&nbsp;&gt;&gt;
			</div>
		</div>
	</div>

	<script src="js/ui-script.js"></script>
</body>
</html>

