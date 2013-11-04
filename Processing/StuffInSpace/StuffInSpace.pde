/** Tidssteg (tiden i sekunder mellom to bilder). */
float timestep = 1.0 / 60.0;
/** Nullvektoren. */
Vector zeroVector = new Vector(0, 0);

/** De to fysiske objektene. */
PhysicalObject o1;
/** De to fysiske objektene. */
PhysicalObject o2;

void setup() {
  size(600, 600);
  fill(128, 160, 192);
  
  o1 = new PhysicalObject( 50, 300, 0,  10, 230000);
  o2 = new PhysicalObject(550, 300, 0, -10, 270000);
}

void draw() {
  // Oppdater aksellerasjonen til begge/alle objektene basert på alle de andre
  // Oppdater posisjonen og hastigheten til objektene og tegn dem opp  
}

