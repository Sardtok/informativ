/**
 * En klasse for to-dimensjonale vektorer.
 */
class Vector {
  /** Størrelse i den første dimensjonen. */
  float x;
  /** Størrelse i den andre dimensjonen. */
  float y;
  
  /**
   * Oppretter en ny vektor.
   *
   * @param x Størrelsen til vektoren i X.
   * @param y Størrelsen til vektoren i Y.
   */
  Vector(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  /**
   * Legger sammen denne vektoren med b og returnerer resultatet.
   *
   * @param b Vektoren som skal legges til.
   * @return En ny vektor som er summen av denne og parameteren.
   */
  Vector add(Vector b) {
    // FYLL UT
    return new Vector(0, 0);
  }
  
  /**
   * Trekker b fra denne vektoren og returnerer resultatet.
   *
   * @param b Vektoren som skal trekkes fra.
   * @return En ny vektor som er differansen mellom denne og parameteren.
   */
  Vector subtract(Vector b) {
    // FYLL UT
    return new Vector(0, 0);
  }
  
  /**
   * Mulitpliserer denne vektoren med en skalar.
   *
   * @param factor Faktoren vektoren skal ganges med.
   * @return En ny vektor som er denne multiplisert med faktoren.
   */
  Vector multiply(float factor) {
    // FYLL UT
    return new Vector(0, 0);
  }
  
  /**
   * Deler denne vektoren på en skalar.
   *
   * @param divisor Skalaren vektoren skal deles på.
   * @return En ny vektor som er denne delt på divisoren.
   */
  Vector divide(float divisor) {
    // FYLL UT
    return new Vector(0, 0);
  }
  
  /**
   * Beregner lengden til denne vektoren.
   *
   * @return Lengden til vektoren.
   */
  float magnitude() {
    // FYLL UT
    return 0;
  }
  
  /**
   * Normaliserer en vektor.
   *
   * @return En vektor som er dennes normaliserte.
   */
  Vector normalize() {
    // FYLL UT
    return new Vector(0, 0);
  }
  
  /***************************************************************/
  /* Det er ikke nødvendig å gjøre noe med funksjonene nedenfor. */
  /***************************************************************/
  
  /**
   * Sjekker om denne vektoren er lik en annen vektor.
   * Fordi flyttall ikke er helt nøyaktige,
   * brukes en feilmargin på 1e-7.
   *
   * @param v Vektoren vi skal sjekke om er lik denne.
   * @return true hvis de to er nesten like.
   */
  public boolean equals(Vector v) {
    if (abs(this.x - v.x) > 1e-7) {
      return false;
    }
    
    if (abs(this.y - v.y) > 1e-7) {
      return false;
    }
    
    return true;
  }
  
  /**
   * Gir en tekstrepresentasjon av denne vektoren.
   *
   * @return En tekst som representerer denne vektoren.
   */
  public String toString() {
    return String.format("(%5.3f, %5.3f)", x, y);
  }
}

