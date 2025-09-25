// Denne klasse repræsenterer ét land og dets flag.
// Jeg bruger den til at holde styr på flagets billede, placering og størrelse.
// Det gør koden mere overskuelig, fordi jeg slipper for at have 16 separate PImage-variabler.

class CountryFlag {
  String name;       // Navnet på landet – bruges til at finde billedfilen
  PImage image;      // Flagbilledet som bliver indlæst fra "data"-mappen
  float x, y, w, h;  // Placering og størrelse på skærmen

  // Konstruktoren tager navnet og placering/størrelse og indlæser billedet automatisk.
  CountryFlag(String name, float x, float y, float w, float h) {
    this.name = name;
    this.image = loadImage(name + ".png"); // Billedfilen skal hedde fx "denmark.png" 
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }

  // Denne metode tegner flaget på skærmen.
  void display() {
    image(image, x, y, w, h);
  }

}
