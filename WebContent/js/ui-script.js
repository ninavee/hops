/* PIKAOPAS */
var t1, t2;

document.getElementById("tyhjenna").addEventListener("mouseover", function(){
	t1 = setTimeout(function() {document.getElementById("pikaopas").innerHTML = "Peruuta KAIKKI Ilmoittauduttu-tilan (keltaiset) ja Suunniteltu-tilan (punaiset) kurssit";}, 1000);
});

document.getElementById("tyhjenna").addEventListener("mouseout", function(){
	document.getElementById("pikaopas").innerHTML = "";
	clearTimeout(t1);
});

document.getElementById("ilmoittaudu").addEventListener("mouseover", function(){
	t2 = setTimeout(function(){document.getElementById("pikaopas").innerHTML = "Ilmoittaudu suunnitelman KAIKILLE kurssitoteutuksille, joihin ei ole viel‰ ilmoittauduttu (punaiset)";}, 1000);
});

document.getElementById("ilmoittaudu").addEventListener("mouseout", function(){
	document.getElementById("pikaopas").innerHTML = "";
	clearTimeout(t2);
});

document.getElementById("add1").addEventListener('click', function() {
	window.confirm("Kurssitoteutus lis‰t‰‰n opintosuunnitelmaasi.");
/*	location.reload(); */
});

function bind_event1(i) {
	var td = document.getElementById('c' + i);
	if (typeof window.addEventListener === 'function') {
		td.addEventListener('click', function() {
			td.style.whiteSpace = "normal";
			td.style.textOverflow = "none";
		});
		td.addEventListener('mouseout', function() {
			td.style.whiteSpace = "nowrap";
			td.style.textOverflow = "ellipsis";
		});
		td.addEventListener('mouseover', function() {
			td.style.cursor = 'pointer';
		});
	}
}

for (var j = 1; j < 8; j++) {
	bind_event2(j);
}

function bind_event2(j) {
	var d1 = document.getElementById('rivi' + j);
	if (typeof window.addEventListener === 'function') {
		d1.addEventListener('click', function() {
			d1.style.whiteSpace = "normal";
			d1.style.textOverflow = "none";
		});
		d1.addEventListener('mouseout', function() {
			d1.style.whiteSpace = "nowrap";
			d1.style.textOverflow = "ellipsis";
		});
		d1.addEventListener('mouseover', function() {
			d1.style.cursor = 'pointer';
		});
	}
}

/*
 * document.getElementById("nappi").addEventListener("click", function(){ var b1 =
 * document.getElementById("listaus"); var b2 =
 * document.getElementById("nappi"); if (b1.style.display == "none") {
 * b1.style.display = "block"; b1.scrollTop = 0; b2.value = "PIILOTA
 * KOULUTUSOHJELMA"; } else { b1.style.display = "none"; b2.value = "N√ÑYT√Ñ
 * KOULUTUSOHJELMA"; } });
 * setTimeout(function(){document.getElementById('cloud').style.visibility =
 * 'hidden';}, 5000);
 */