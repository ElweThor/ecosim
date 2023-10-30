/*  TO-DO
----+----1----+----1----+----1----+----1----+----1----+----1----+----1----+----8
- rules implementation
- world implementation
  - Create a grid: Divide the space into rectangular cells, assigning to each
    cell a set of agents located within it.
    This way, you can easily identify which agents are in the same cell.
  - Reduce the drawing loop: In the draw() method, iterate only the cells and
    the agents within each cell, instead of all the agents.
    This will reduce the number of iterations, making execution more efficient.
  - Managing interactions on the grid: When a herbivore moves, you can check the
    grid to see if it has come into contact with a plant and, if so, make it
    "eat". For reproduction, check if there are other herbivores in the same cell
    with sufficient energy.
  - Consider an event-based approach: You can implement an event system where
    agents publish events when they move or interact with other agents.
    Other affected agents can then respond to those events.
  - Grid optimizations: You may also want to consider a grid implementation that
    dynamically adapts to agent positions, thus reducing the number of empty cells.

- statistics "monitor"
- world's knowledge storage/load

*/
