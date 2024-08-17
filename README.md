# antsimulation
An enhanced Langton's Ant simulator with four colors, resizable grid sizes, and as many ants as you want (3 in this case).

## Instructions:
Just watch the simulation by running antsimulation.pde. You can add more ants by creating more Ant instances with differing coordinates.

## Implementation
Classes:
- Class Ant incorporates the rules required to move and draw each ant.

Rules:
- An ant can be placed upon any graph grid with a beginning direction.
- The ant can turn and move north, south, east, or west.
- When on a white grid square, it will make it black and turn clockwise.
- When on a black grid square, it will make it purple and turn clockwise.
- When on a purple grid square, it will make it cyan and turn counterclockwise.
- On a cyan grid square, it will make it white and turn clockwise.

Drawing:
- The ants are drawn by loading and displaying an SVG file. 
- A grid is drawn using loops to draw lines on a blank canvas at set intervals.
- Rectangles of different colors fill in the grid at the designated grid square while hiding the previous location of the ant.

Solved:
- making the ant turn in the direction of motion
- grid sizing lining up with the drawing locations
- getting the extra colors to show and not repeat
- making each ant appear and disappear
- what happens when two or more ants land at the same time on a grid
