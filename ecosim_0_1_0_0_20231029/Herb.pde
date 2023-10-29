// Herb.pde
class Herb {
  float x, y; // Herbivore position
  float energy; // Herbivore energy level
  boolean canReproduce; // Indicates if herbivore can reproduce

  // Constructor for herbivores
  Herb(float x, float y) {
    this.x = x;
    this.y = y;
    this.energy = 25;
    this.canReproduce = false;
  }

  // Move herbivore
  void move() {
    // Implement movement logic here
    // For now, let's move randomly
    x += random(-1, 1);
    y += random(-1, 1);
  }

  // Display herbivore
  void display(color col) {
    fill(col);
    ellipse(x, y, 20, 20);
  }
}
