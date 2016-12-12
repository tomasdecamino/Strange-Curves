// @author: Tomas de Camino Beck
// V2: without arrrays

int n =400; //number of points
int len=300; //radius
int m = 1;  //multiplier


void setup() {
  size(640, 640);
}

void draw() {
  frameRate(2);
  m = mouseX/50;
  background(255);
  stroke(0,100);
  pushMatrix();
  translate(width/2, height/2);
  for (int i = 0; i < n; i++) {
    //calculate first point
    float x = cos(TWO_PI/n*i)*len;
    float y = sin(TWO_PI/n*i)*len;
    strokeWeight(2);
    //draw point
    point(x, y);
    
    //calculate second point in postion multiplied by m
    //function modulo % to go around
    float x2 = cos(TWO_PI/n*((i*m)%n))*len;
    float y2 = sin(TWO_PI/n*((i*m)%n))*len;
    strokeWeight(1);
    //draw line
    line(x, y, x2, y2);
  }
  popMatrix();
}
