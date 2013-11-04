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
  
  for (Circle c : circles) {
    c.draw();
  }
}

void mouseClicked() {
  circles.add(new Circle(mouseX, mouseY));
}

