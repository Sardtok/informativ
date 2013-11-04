class Ball {
  /** Vektor som holder på ballens posisjon på skjermen. */
  Vector position;
  /** Vektor som holder på hastigheten til ballen. */
  Vector velocity;
  /** Vektor som holder på aksellerasjonen til ballen. */
  Vector acceleration;
  
  /**
   * Opprett en ball.
   *
   * @param x Horisontal posisjon.
   * @param y Vertikal posisjon.
   * @param velX Horisontal starthastighet.
   * @param velY Vertikal starthastighet.
   */
  Ball(float x, float y, float velX, float velY) {
    // Opprett posisjonsvektoren, fartsvektoren og aksellerasjonsvektoren
    // Aksellerasjonen og hastigheten bør skaleres basert på pixelPerMeter
  }
  
  /**
   * Oppdater og tegn opp ballen.
   */
  void draw() {
    // Oppdater hastigheten basert på aksellerasjonen
    // Oppdater posisjonen basert på hastigheten
    // Husk å ta hensyn til tidssteget
    // Tegn opp ballen
  }
}

