// specify start position and direction based on grid square coordinates
int startGridX = 20;
int startGridY = 5;
int startDirection = 1;
//
int gridSize = 50;
int startX =(startGridX * gridSize) + gridSize/2;
int startY =(startGridY * gridSize) + gridSize/2;
Ant ant;
PShape antPic;


void drawGrid() { 
  for (int x = 0; x <= width; x += gridSize) {
    line(x, 0, x, height);
  }

  for (int y = 0; y <= height; y+= gridSize) {
    line(0, y, width, y);
  }
}


void setup() {
  size(1500, 900);
  background(255);
  rectMode(CENTER);
  shapeMode(CENTER);
  antPic = loadShape("ant.svg");
  ant = new Ant(startX, startY, startDirection, gridSize, antPic);
}


void draw() {
  drawGrid();
  ant.rules();
}
