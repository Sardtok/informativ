Vector a = new Vector(0.75, 0);
Vector b = new Vector(0, 0.75);
Vector c = new Vector(0.75, 0.75);
Vector zero = new Vector(0, 0);
Vector center;

void setup() {
  size(300, 300);
  background(255);
  fill(0);
  textAlign(LEFT, TOP);
  smooth();
  center = new Vector(width / 2, height / 2);
  
  if (testAddition()
      && testSubtraction()
      && testScalarMultiplication()
      && testScalarDivision()
      && testNormalize()) {
    background(#408040);
    textAlign(CENTER);
    text("Everything works!!! WOOHOO!", width / 2, height / 2);
  }
}

/**
 * Tegner en vektor på skjermen.
 *
 * @param v Vektoren som skal tegnes.
 * @param from Startposisjonen vektoren skal tegnes fra.
 */
void drawVector(Vector v, Vector from) {
  line(from.x, from.y, from.x + v.x * 100, from.y + v.y * 100);
  ellipse(from.x + v.x * 100, from.y + v.y * 100, 6, 6);
}

/**
 * Viser en feilmelding på skjermen for matematiske formler mellom to vektorer.
 *
 * @param operator Den matematiske operatoren.
 * @param op1 Den første operanden.
 * @param op2 Den andre operanden.
 * @param got Det svaret som ble utregnet.
 * @param expected Det forventede svaret.
 */
void displayError(String operator, String op1, String op2, Vector got, Vector expected) {
  text("Calculated:\nExpected:\nGot:", 0, 0);
  text(String.format("%s %s %s%n%s%n%s", op1, operator, op2, expected, got), 100, 0);
  
  stroke(#00FF00);
  fill(#00FF00);
  drawVector(expected, center);
  stroke(#FF0000);
  fill(#FF0000);
  drawVector(got, center);
}

/**
 * Sjekker at det går å legge sammen vektorer.
 *
 * @return true hvis alle testene passerer.
 */
boolean testAddition() {
  Vector answer = new Vector(1.5, 1.5);
  if (!a.add(b).equals(c)) {
    displayError("+", a.toString(), b.toString(), a.add(b), c);
    return false;
  }
  
  if (!b.add(a).equals(c)) {
    displayError("+", b.toString(), a.toString(), b.add(a), c);
    return false;
  }
  
  if (!c.add(c).equals(answer)) {
    displayError("+", c.toString(), c.toString(), c.add(c), answer);
    return false;
  }
  return true;
}

/**
 * Sjekker at det går å trekke en vektor fra en vektor.
 *
 * @return true hvis alle testene passerer.
 */
boolean testSubtraction() {
  if (!a.subtract(a).equals(zero)) {
    displayError("-", a.toString(), a.toString(), a.subtract(a), zero); 
    return false;
  }
  
  if (!c.subtract(b).equals(a)) {
    displayError("-", c.toString(), b.toString(), c.subtract(b), a);
    return false;
  }
  
  if (!c.subtract(a).equals(b)) {
    displayError("-", c.toString(), a.toString(), c.subtract(a), b);
    return false;
  }
  return true;
}

/**
 * Sjekker at skalarmultiplikasjon virker.
 *
 * @return true hvis alle testene passerer.
 */
boolean testScalarMultiplication() {
  Vector answer = new Vector(1.5, 1.5);
  if (!c.multiply(2).equals(answer)) {
    displayError("*", c.toString(), Integer.toString(2), c.multiply(2), answer);
    return false;
  }
  
  answer = new Vector(0.5625, 0);
  if (!a.multiply(0.75).equals(answer)) {
    displayError("*", a.toString(), Float.toString(0.75), a.multiply(0.75), answer);
    return false;
  }
  
  return true;
}

/**
 * Sjekker om skalardivisjon virker.
 *
 * @return true hvis alle testene passerer.
 */
boolean testScalarDivision() {
  Vector numerator = new Vector(1.5, 1.5);
  if (!numerator.divide(2).equals(c)) {
    displayError("/", numerator.toString(), Integer.toString(2), numerator.divide(2), c);
    return false;
  }
  
  numerator = new Vector(0.5625, 0);
  if (!numerator.divide(0.75).equals(a)) {
    displayError("/", numerator.toString(), Float.toString(0.75), numerator.divide(0.75), a);
    return false;
  }
  return true;
}

/**
 * Sjekker om normaliseringsmetodene virker.
 *
 * @return true hvis alle testene passerer.
 */
boolean testNormalize() {
  Vector normalized = a.normalize();
  Vector answer = new Vector(1, 0);
  if (!normalized.equals(answer)) {
    displayError(a.toString(), "norm(", ")", normalized, answer); 
    return false;
  }
  
  normalized = b.normalize();
  answer = new Vector(0, 1);
  if (!normalized.equals(answer)) {
    displayError(b.toString(), "norm(", ")", normalized, answer);
    return false;
  }
  
  normalized = c.normalize();
  answer = new Vector(0.7071067811, 0.7071067811);
  if (!normalized.equals(answer)) {
    displayError(c.toString(), "norm(", ")", normalized, answer);
    return false;
  }
  
  return true;
}

