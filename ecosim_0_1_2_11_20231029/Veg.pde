// Veg.pde
class Veg extends Agent {
  //float energy; // Herbivore energy level
  boolean canReproduce; // Indicates if herbivore can reproduce

  // Constructor for vegetal resources
  Veg(float x, float y) {
    //super(x, y, vegCellSize);
    super(x, y, vegCellSize, vegStartEnergy);
    this.energy = vegStartEnergy;
    this.canReproduce = false;
  }

  // Move vegetal
  void move() {
    // veggies doesn't move
  }

  // Display vegetal resource
  void display() {
    fill(vegColor);
    //ellipse(x, y, cellSize, cellSize);
    arc(x, y, cellSize, cellSize, PI, TWO_PI, PIE);
  }
}
