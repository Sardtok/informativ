/**
 * Et fysisk objekt som kan sveve rundt i rommet.
 */
class PhysicalObject {
  /** Posisjonen til objektet. */
  Vector position;
  /** Hastigheten til objektet. */
  Vector velocity;
  /** Aksellerasjonen til objektet. */
  Vector acceleration;
  /** Massen til objektet. */
  float mass;
  
  /**
   * Oppretter et nytt fysisk objekt.
   *
   * @param x Horisontal posisjon.
   * @param y Vertikal posisjon.
   * @param velX Horisontal hastighet.
   * @param velY Vertikal hastighet.
   * @param mass Massen til objektet.
   */
  PhysicalObject(float x, float y, float velX, float velY, float mass) {
    position = new Vector(x, y);
    velocity = new Vector(velX, velY);
    acceleration = zeroVector;
    this.mass = mass;
  }
  
  /**
   * Oppdaterer aksellerasjonen til dette objektet basert på påvirkningen fra o.
   *
   * @param o Et objekt som dette objektet graviterer mot. 
   */
  void updateAcceleration(PhysicalObject o) {
    Vector diff = o.position.subtract(position);
    float r2 = diff.x * diff.x + diff.y * diff.y;
    acceleration = acceleration.add(diff.normalize().multiply(o.mass/r2));
  }
  
  /**
   * Oppdater posisjonen og tegn opp objektet.
   */
  void draw() {
    velocity = velocity.add(acceleration.multiply(timestep));
    position = position.add(velocity.multiply(timestep));
    acceleration = zeroVector;
    
    ellipse(position.x, position.y, 20, 20);
  }
}

