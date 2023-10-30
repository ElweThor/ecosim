/*
___TO-fix___
- settings(): agentMaxCells calculation seems wrong if fullscreen

___ChangeLog___

20231029  0.1.2.11  [GPT/ET] alpha - openspace becomes a grid
.11 * Veg(), Herb(), Carn(): agents' shapes changed
.10 ! main: grid.updateGrid() moved from draw() to setup(): updateGrid() de facto only add agents: no need, after startup
.9 ! Agent() re-implemented as abstract class, with .move and .display methods defined as abstract too, so to be defined in their own agents' classes
.8 ! Grid() moved the grid init code to its own method, to avoid clear previous agents' data with multiple updates
.7 ! Veg, Herb, Carn classes now initializes their agents with the correct initial energy
.6 * Veg, Herb, Carn classes extends Agent() one
.5 + Agent() class
.4 * main changes to reflect Grid use
.3 + Grid() class, with its methods

20231029  0.1.1.2  [GPT/ET] alpha - initial population settings and fix
.2 + initial population settings, defined as percentages of available space: vegStartAmtPct, herbStartAmtPct, carnStartAmtPct 
.1 ! ecosim_0_1_0_0_20231029: can't setup size() with logic/parameters, so switched to settngs() for that

20231029  0.1.0.0  [GPT/ET] alpha
.0 + initial release, with classes, into separate tabs 
*/
