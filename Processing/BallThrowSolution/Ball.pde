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
    position = new Vector(x, y);
    velocity = new Vector(velX * pixelsPerMeter, velY * pixelsPerMeter);
    acceleration = new Vector(0 * pixelsPerMeter, 9.81 * pixelsPerMeter);
  }
  
  /**
   * Oppdater og tegn opp ballen.
   */
  void draw() {
    velocity = velocity.add(acceleration.multiply(timestep));
    position = position.add(velocity.multiply(timestep));
    
    ellipse(position.x, position.y, 20, 20);
  }
}

