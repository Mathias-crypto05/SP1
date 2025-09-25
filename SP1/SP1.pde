//05.09.25
// SP1 start

//06.09.25
//Vil forsøge at indsætte billeder af flag.

//08.09.25
//Vil indsætte de sidste flag og de farvede rektangler. At få den præcise lokation er røv svær men lykkedes. flagene passer så godt som de nu engang kan.

//15.09.25
// Bruger arrays og har lavet klasser for at få et bedre oversigt i vores kode hvilket har gjort det meget mere overskuligt for mig. Skal have sat landendes navne på. Burde gerne blive færdig håber jeg.
// ændre tekst ser grim ud

BannerGroup groupA, groupB, groupC, groupD;

void setup() {
  // === SETUP ===
// Her sætter jeg størrelsen på vinduet og baggrunden.
size(1400, 700); // Fast størrelse – passer til layoutet
background(#222222); // Mørk baggrund – giver kontrast til bannere og tekst

// === Farver ===
// Jeg definerer farver til bannere og markører.
// Disse farver bliver sendt videre til BannerGroup-klassen.
color white = color(255);     // Bannerfarve (hvid)
color blue = #62D1F0;         // Markørfarve til Group A og C
color yellow = #FCFD55;       // Markørfarve til Group B og D

// === Arrays med landenavne ===
// Disse arrays bruges til at oprette CountryFlag-objekter inde i BannerGroup.
// Rækkefølgen i arrayet bestemmer placeringen af flagene og navnene.
String[] groupAFlags = {"russia", "saudi arabia", "egypt", "uruguay"};
String[] groupBFlags = {"portugal", "spain", "morocco", "iran"};
String[] groupCFlags = {"france", "australia", "peru", "denmark"};
String[] groupDFlags = {"argentina", "iceland", "croatia", "nigeria"};

// === BannerGroup-objekter ===
// Her opretter jeg fire grupper ved hjælp af BannerGroup-klassen.
// Klassen tager placering, antal flag, farver og navnene som input.
// Den opretter automatisk CountryFlag-objekter og gemmer dem i et array.
groupA = new BannerGroup(width / 50, height * 0.072, 4, white, blue, groupAFlags);
groupC = new BannerGroup(width * 0.52, height * 0.072, 4, white, blue, groupCFlags);
groupB = new BannerGroup(width / 50, height * 0.586, 4, white, yellow, groupBFlags);
groupD = new BannerGroup(width * 0.52, height * 0.586, 4, white, yellow, groupDFlags);

// === Skrifttype ===
// Jeg indlæser en skrifttype fra "data"-mappen og sætter den som aktiv.
// Denne skrifttype bruges til overskrifter og landenavne.
PFont font = loadFont("Corbel-Bold-48.vlw");
textFont(font);
}

void draw() {
 // === DRAW ===
// Her tegner jeg alt det visuelle – baggrunde, grupper, flag og tekst.

// === Baggrunde ===
// Jeg tegner venstre og højre felt med forskellige farver.
// Midterlinjen adskiller grupperne visuelt.
fill(#23324C); // Venstre felt
rect(width / 50, height / 180, width * 0.495, height * 0.98);

fill(#2C3953); // Højre felt
rect(width * 0.5, height / 180, width * 0.495, height * 0.98);

fill(#FDFEFF); // Midterlinje
rect(width * 0.5, height / 170, width * 0.003, height * 0.98);

// === Overskrifter ===
// Jeg kalder en funktion (groupSkrift()) som skriver "GROUP A", "GROUP B" osv.
// Den bruger text() og placeringer – ikke en klasse, men en separat funktion.
groupSkrift();

// === Bannere og flag ===
// Jeg kalder display()-metoden fra BannerGroup-klassen.
// Den tegner de hvide bannere, farvede markører og alle flagene.
// Flagene kommer fra CountryFlag-klassen, som ligger inde i BannerGroup.
groupA.display();
groupC.display();
groupB.display();
groupD.display();

// === Landenavne ===
// Jeg kalder visLandenavne(), som viser navnene til hvert flag.
// Den bruger arrays og text() – ikke en klasse, men en funktion jeg har lavet.
visLandenavne();
}

// === Klasseoversigt ===
// CountryFlag == Repræsenterer et flag - indholder navn, billde, placering og display()
// bliver brugt
// FlagBanner  == Repræsentere en gruppe af flag - opretter og tegner bannere
// Groups      == Repræsentere de Grouper vi har A, B, C og D
// LandeNavne  == Repræsentere landenes navne ved siden af flaget
