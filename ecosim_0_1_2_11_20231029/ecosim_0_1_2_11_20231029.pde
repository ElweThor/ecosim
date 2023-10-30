/*  EcoSim: Agents Exploration Simulation

   Ecology environment where 3 kind of agents interacts while exploring:
   
   1. vegetables: resources
   2. herbivores: explore for resources, to keep alive by feeding
   3. carnivores: explore for herbivores 

   From a chat with GPTv3.5 [1]
   
   See:
     - Rules
     - ChangeLog
     - TO-DO

  refs.
  [1] https://chat.openai.com/share/3164f5cc-16aa-4336-a11d-5c5844a8efc7 (skip the first part)

*/

/*  ___GLOBALS___
*/
Grid grid;

ArrayList<Herb> herbivores;
ArrayList<Carn> carnivores;
ArrayList<Veg> vegetals;

/* Display:
  View: Width, Height
  CellSize
  agentColor
*/
boolean fullscreen = false;
//boolean fullscreen = true;
int viewWidth = 2000;
int viewHeight = 1000;

int vegCellSize = 10;
int herbCellSize = 10;
int carnCellSize = 10;

color vegColor, herbColor, carnColor;

/* Energy management

  agentMaxEnergy
  agentStartEnergy
  agentMaxSpeed
*/
int vegMaxEnergy = 1;
int herbMaxEnergy = 50;
int carnMaxEnergy = 200;

int agentMaxCells;

int vegStartEnergy = vegMaxEnergy;
int herbStartEnergy = herbMaxEnergy / 2;
int carnStartEnergy = carnMaxEnergy / 2;

float vegMaxSpeed = 0;
float herbMaxSpeed = 2;
float carnMaxSpeed = herbMaxSpeed * 2;

/*  Initial population

    initial population amount is given, for each agent type as percentage to the total space amount,
    considering total = vegs% + herb% + carn% + free% = 100%
    (which means vegs% + herb% + carn% MUST be <= 100%)
*/
float vegStartAmtPct = 0.1;                            // 10%
float herbStartAmtPct = 0.005;                         //  0.5%
float carnStartAmtPct = 0.002;                         //  0.2%

/*  Other globals
*/
int cols;
int rows;


/*  ___MAIN___
*/
void settings() {
  if (fullscreen) {
    //size(displayWidth, displayHeight);
    fullScreen();
  } else {
    viewWidth = min(viewWidth, displayWidth);
    viewHeight = min(viewHeight, displayHeight);
    size(viewWidth, viewHeight);
  }
  cols = floor(viewWidth / herbCellSize);
  rows = floor(viewHeight / herbCellSize);
  // Grid init
  grid = new Grid(cols, rows);  
  // Calculates the maximum number of cells based on the size of the viewport and the size of a cell
  agentMaxCells = floor((width * height) / vegCellSize / vegCellSize);
}

void setup() {
  herbivores = new ArrayList<Herb>();
  carnivores = new ArrayList<Carn>();
  vegetals = new ArrayList<Veg>();

  // Set agents' colors
  vegColor = color(0, 255, 0); // Green
  herbColor = color(0, 0, 255); // Blue
  carnColor = color(255, 0, 0); // Red

  // Calculates the number of initial agents based on the specified percentages
  int vegStartAmt = floor(agentMaxCells * vegStartAmtPct);
  int herbStartAmt = floor(agentMaxCells * herbStartAmtPct);
  int carnStartAmt = floor(agentMaxCells * carnStartAmtPct);

  // Add initial vegetals
  for (int i = 0; i < vegStartAmt; i++) {
    //vegetals.add(new Veg(random(width), random(height)));
    int x = floor(random(cols)) * vegCellSize;
    int y = floor(random(rows)) * vegCellSize;
    vegetals.add(new Veg(x, y));
  }
  println("Vegetals: " + vegetals.size());

  // Add initial herbivores
  for (int i = 0; i < herbStartAmt; i++) {
    //herbivores.add(new Herb(random(width), random(height)));
    int x = floor(random(cols)) * herbCellSize;
    int y = floor(random(rows)) * herbCellSize;
    herbivores.add(new Herb(x, y));
  }
  println("Herbivores: " + herbivores.size());

  // Add initial carnivores
  for (int i = 0; i < carnStartAmt; i++) {
    //carnivores.add(new Carn(random(width), random(height)));
    int x = floor(random(cols)) * carnCellSize;
    int y = floor(random(rows)) * carnCellSize;
    carnivores.add(new Carn(x, y));
  }
  println("Carnivores: " + carnivores.size());
  grid.init();
  // Grid agents update: add agents
  grid.updateGrid(vegetals);
  grid.updateGrid(herbivores);
  grid.updateGrid(carnivores);
}

void draw() {
  //background(255);
  background(0);

  /*
  // Grid agents update
  grid.updateGrid(vegetals);
  grid.updateGrid(herbivores);
  grid.updateGrid(carnivores);
  */

  /*
  // Move and display herbivores
  for (Herb herb : herbivores) {
    herb.move();
    herb.display(herbColor);
  }

  // Move and display carnivores
  for (Carn carn : carnivores) {
    carn.move();
    carn.display(carnColor);
  }

  // Display vegetal resources
  for (Veg veg : vegetals) {
    veg.display(vegColor);
  }
  */

  // Viewport update with Grid's agents
  for (int i = 0; i < cols; i++) {
    for (int j = 0; j < rows; j++) {
      for (Agent agent : grid.grid[i][j]) {
        agent.display();
        agent.move();
      }
    }
  }

}

// Additional methods for Herb and Carn classes will be implemented here
