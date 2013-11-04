/** Tidssteg (tiden i sekunder mellom to bilder). */
float timestep = 1.0 / 60.0;
/** Antall piksler per meter. */
float pixelsPerMeter = 30.0;
/** Ballen som kastes. */
Ball ball;

void setup() {
  size(800, 600);
  fill(96, 128, 192);
  ball = new Ball(10, height - 10, 7.0, -12.0);
}

void draw() {
  background(255);
  ball.draw();
}

