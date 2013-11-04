// En liste med sirkler.
// Det tillater dere å tegne mange sirkler
ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
  size(800, 600);
  fill(96, 128, 192);
  smooth();
  
  circles.add(new Circle(width / 2, height / 2));
}

void draw() {
  background(255);
  
  // Tegn sirklene her
  // Bruk draw-funksjonen du la til i sirkel-klassen
}

void mouseClicked() {
  // Legg til flere sirkler
}

