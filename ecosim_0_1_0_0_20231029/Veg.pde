// Veg.pde
class Veg {
  float x, y; // Position of vegetal resources
  boolean available; // Indicates if the resource is available

  // Constructor for vegetal resources
  Veg(float x, float y) {
    this.x = x;
    this.y = y;
    this.available = true;
  }

  // Display vegetal resource
  void display(color col) {
    fill(col);
    ellipse(x, y, 10, 10);
  }
}
