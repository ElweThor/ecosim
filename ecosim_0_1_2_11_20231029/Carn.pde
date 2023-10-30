// Carn.pde
class Carn extends Agent {
  //float energy; // Carnivore energy level
  boolean canReproduce; // Indicates if carnivore can reproduce

  // Constructor for carnivores
  Carn(float x, float y) {
    //super(x, y, carnCellSize);
    super(x, y, carnCellSize, carnStartEnergy);
    this.energy = carnStartEnergy;
    this.canReproduce = false;
  }

  // Move carnivore
  void move() {
    // Implement movement logic here
    // For now, let's move randomly
    x += random(-1, 1);
    y += random(-1, 1);
  }

  // Display carnivore
  void display() {
    fill(carnColor);
    ellipse(x, y, cellSize, cellSize);
  }
}
