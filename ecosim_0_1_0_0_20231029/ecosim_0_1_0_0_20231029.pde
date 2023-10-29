// ecosim_0_1_0_0_20231029.pde

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
ArrayList<Herb> herbivores;
ArrayList<Carn> carnivores;
ArrayList<Veg> vegetals;

/* Display:
  View: Width, Height
  CellSize
  agentColor
*/
boolean fullscreen = false;
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

int vegStartEnergy = vegMaxEnergy;
int herbStartEnergy = herbMaxEnergy / 2;
int carnStartEnergy = carnMaxEnergy / 2;

float vegMaxSpeed = 0;
float herbMaxSpeed = 2;
float carnMaxSpeed = herbMaxSpeed * 2;

void setup() {
  if (fullscreen) {
    size(displayWidth, displayHeight);
  } else {
    viewWidth = min(viewWidth, displayWidth);
    viewHeight = min(viewHeight, displayHeight);
    size(viewWidth, viewHeight);
  }

  herbivores = new ArrayList<Herb>();
  carnivores = new ArrayList<Carn>();
  vegetals = new ArrayList<Veg>();

  // Set colors
  vegColor = color(0, 255, 0); // Green
  herbColor = color(0, 0, 255); // Blue
  carnColor = color(255, 0, 0); // Red

  // Add initial agents and resources
  for (int i = 0; i < 5; i++) {
    herbivores.add(new Herb(random(width), random(height)));
    carnivores.add(new Carn(random(width), random(height)));
    vegetals.add(new Veg(random(width), random(height)));
  }
}

void draw() {
  background(255);
  
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
}

// Additional methods for Herb and Carn classes will be implemented here
