/*  Initial rules by GPT

* Herbivore Movement:
    Herbivores search for (plant) resources by moving randomly through the environment.
    When they find a resource, they consume it and gain energy.

* Carnivore Movement:
   Carnivores seek out herbivores to hunt them.
   If a carnivore finds a herbivore, it chases it.
   If it manages to reach a herbivore, it captures it and gains energy.

* Plant Resources:
   Plant resources are randomly placed in the environment.
   Herbivores can consume them to gain energy.

* Energy and Survival:
   Agents (both herbivores and carnivores) have an energy level.
   To survive, agents must maintain their energy level above a threshold.
   
   
   Additional rules, on Energy, by me
   
* Resource Value:
   Vegetables are worth 1 unit of energy.

* Herbivores:
   They gain 1 unit of energy for each vegetable eaten.
   They use 0.1 energy for each movement.
   Maximum Energy: 50.
   They are born with 25 energy.
   They can reproduce if they have at least 50% of maximum energy.

* Carnivores:
   They gain the total energy of the herbivore eaten, minus 10%.
   They use 0.5 energy for each movement.
   They are twice as fast as herbivores.
   Maximum Energy: 200.
   They can reproduce if they have at least 50% of maximum energy.

* Reproduction:
   Agents can only reproduce if they have at least 50% of maximum energy.
   If they breed, there is a 50% chance of doing so when they find an agent of the same type nearby.
*/
