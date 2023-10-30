// Grid.pde
class Grid {
  int cols, rows; // Number of columns and rows in the grid
  ArrayList<Agent>[][] grid; // Grid containing the agents

  // Constructor of the Grid class
  Grid(int cols, int rows) {
    this.cols = cols;
    this.rows = rows;

    // Initialize the grid
    grid = new ArrayList[cols][rows];
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        grid[i][j] = new ArrayList<Agent>();
      }
    }
  }

  // Grid reset
  void init() {
    for (int i = 0; i < cols; i++) {
      for (int j = 0; j < rows; j++) {
        grid[i][j].clear();
      }
    }
  }

 //<>//
  // Add an agent to the grid
  void addAgent(Agent agent) {
    int col = floor(agent.x / agent.cellSize);
    int row = floor(agent.y / agent.cellSize);
    grid[col][row].add(agent);
    //println("Added agent at x: " + agent.x + ", y: " + agent.y + " to col: " + col + ", row: " + row);
  }

  // Updates the grid with current agents
  void updateGrid(ArrayList<? extends Agent> agents) {
    // Add agents (from their array) to the grid
    for (Agent agent : agents) {
      addAgent(agent);
    }
  }

  // ... (any other methods necessary)
}
