// Herb.pde
class Herb extends Agent {
  //float energy; // Herbivore energy level
  boolean canReproduce; // Indicates if herbivore can reproduce

  // Constructor for herbivores
  Herb(float x, float y) {
    //super(x, y, herbCellSize);
    super(x, y, herbCellSize, herbStartEnergy);
    this.energy = herbStartEnergy;
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
  void display() {
    fill(herbColor);
    //ellipse(x, y, cellSize, cellSize);
    square(x, y, cellSize);
  }
}
