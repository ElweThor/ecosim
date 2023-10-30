// Agent.pde
abstract class Agent {
  float x, y; // Position of the agent
  float energy; // Energy level of the agent
  int cellSize; // Size of the agent

  // Constructor for agents
  Agent(float x, float y, int cellSize, float energy) {
    this.x = x;
    this.y = y;
    this.cellSize = cellSize;
    this.energy = energy;
  }

  // Move agent (to be implemented by subclasses)
  abstract void move();

  // Display agent (to be implemented by subclasses)
  abstract void display();
}
