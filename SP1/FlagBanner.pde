// Denne klasse styrer en gruppe af bannere og de flag, der hører til.
// Jeg bruger den til at tegne både baggrunde, markører og selve flagene.
// Den gør det nemt at styre grupper som Group A, B, C og D uden at gentage kode.

class BannerGroup {
  float x, y;               // Startposition for gruppen på skærmen
  float bWidth, bHeight;    // Størrelse på hvert banner
  int count;                // Antal bannere (og flag) i gruppen
  color bannerColor;        // Farve på banneret (typisk hvid)
  color markerColor;        // Farve på den lille markør i højre kant
  CountryFlag[] flags;      // Array med flagene i gruppen

  // ---------------- Konstruktor ----------------
  // Denne konstruktor opretter et BannerGroup-objekt.
  // Den tager:
  //   x, y = startplacering
  //   count = hvor mange flag/bannere
  //   bannerColor = farve på banneret
  //   markerColor = farve på markøren
  //   countryNames = array med landenavne (samme rækkefølge som flag)
  BannerGroup(float x, float y, int count, color bannerColor, color markerColor, String[] countryNames) {
    this.x = x;
    this.y = y;
    this.count = count;
    this.bannerColor = bannerColor;
    this.markerColor = markerColor;
    this.bWidth = width * 0.468;   // Bannerets bredde = 46,8% af vinduet
    this.bHeight = height * 0.085; // Bannerets højde = 8,5% af vinduet

    float flagW = width / 10.5;    // Flagets bredde
    float flagH = height / 11.3;   // Flagets højde

    // Opretter et array med CountryFlag-objekter
    flags = new CountryFlag[count];
    for (int i = 0; i < count; i++) {
      // Beregner Y-placering for hvert flag (så de ligger under hinanden)
      float flagY = y + i * height * 0.1; 
      flags[i] = new CountryFlag(countryNames[i], x, flagY, flagW, flagH);
      // CountryFlag-klassen indlæser billedet automatisk fra "data"-mappen
    }
  }

  // ---------------- display() ----------------
  // Denne metode tegner alle bannere og markører, samt flagene ovenpå
  void display() {
    noStroke();
    for (int i = 0; i < count; i++) {
      float currentY = y + i * height * 0.1; // Samme logik som ved flag
      fill(bannerColor);
      rect(x, currentY, bWidth, bHeight);    // Tegn banner

      fill(markerColor);
      float markerW = width * 0.015;         // Bredden på den farvede markør
      rect(x + bWidth - markerW, currentY, markerW, bHeight); // Tegn markør
    }

    // Tegner flagene ovenpå bannere
    for (CountryFlag flag : flags) {
      flag.display(); // flagets egen display-metode
    }
  }
}
