// Denne funktion viser alle landenavne i grupper A, B, C og D.
// Jeg bruger arrays til at holde navnene og for-løkker til at placere dem automatisk.
// Det gør koden meget nemmere at vedligeholde og udvide, i stedet for at skrive 16 text()-linjer manuelt.

void visLandenavne() {
  fill(0); // Sort tekst – god kontrast mod hvidt banner
  textSize(60); // Stor og tydelig tekst

  // === Arrays med landenavne ===
  // Jeg grupperer navnene, så de matcher flagenes rækkefølge og placering
  String[] groupA = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY"};
  String[] groupC = {"FRANCE", "AUSTRALIA", "PERU", "DENMARK"};
  String[] groupB = {"PORTUGAL", "SPAIN", "MOROCCO", "IRAN"};
  String[] groupD = {"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};

  // === Placeringer og afstande ===
  // === Tegn navnene for hver gruppe ===

  // Øverste venstre (Group A)
  for (int i = 0; i < groupA.length; i++) {
  text(groupA[i], 170, 100 + i * 70);
  }

  // Øverste højre (Group C)
  for (int i = 0; i < groupC.length; i++) {
    text(groupC[i], 870, 100 + i * 70);
  }

  // Nederste venstre (Group B)
  for (int i = 0; i < groupB.length; i++) {
    text(groupB[i], 170, 460 + i * 70);
  }

  // Nederste højre (Group D)
  for (int i = 0; i < groupD.length; i++) {
    text(groupD[i], 870, 460 + i * 70);
  }
}
