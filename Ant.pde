class Ant{
  int x;
  int y;
  int direction;
  int s;
  PShape ant;
  
  Ant(int startX, int startY, int startDirection, int gridSize, PShape antPic) {
    this.x = startX;
    this.y = startY;
    this.direction = startDirection;
    this.s = gridSize;
    this.ant = antPic;
  }
  
  void rules(){
    noStroke();
    rect(x, y, s - 2, s - 2);
    //move according to direction
    if (direction == 0) { //south
      this.y += s;
    }
    else if (direction == 1){ //east
      this.x += s;
    }
    else if (direction == 2){ //north
      this.y -= s;
    }
    else { //west
      this.x -= s;
    }
    //
    //fill choice and turning
    if (get(x, y) == color(255)){ //make black, turn right
      fill(0);
      direction = (direction + 3) % 4;
    }
    else if (get(x, y) == color(0)){ //make purple, turn right
      fill(175, 180, 255);
      direction = (direction + 3) % 4;
    }
    else if (get(x, y) == color(175, 180, 255)){ //make cyan, turn left
      fill(175, 252, 255);
      direction = (direction + 1) % 4;
    }
    else { //make white, turn left
      fill(255); 
      direction = (direction + 1) % 4;
    }
    //
    pushMatrix();
    translate(x, y); // Move to the center of the ant's grid cell
    rotate(radians(direction * 90)); // Rotate the shape based on the direction
    shape(ant, 0, 0, s - 5, s - 5); // Draw the ant shape centered at (0, 0)
    popMatrix();
  }
}
