// Carn.pde
class Carn {
  float x, y; // Carnivore position
  float energy; // Carnivore energy level
  boolean canReproduce; // Indicates if carnivore can reproduce

  // Constructor for carnivores
  Carn(float x, float y) {
    this.x = x;
    this.y = y;
    this.energy = 100;
    this.canReproduce = false;
  }

  // Move carnivore
  void move() {
    // Implement movement logic here
    // For now, let's move randomly
    x += random(-2, 2);
    y += random(-2, 2);
  }

  // Display carnivore
  void display(color col) {
    fill(col);
    rect(x, y, 20, 20);
  }
}
