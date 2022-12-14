void setup() {
  size(600, 600);
  noFill();
  strokeWeight(2);
  ellipseMode(CENTER);
}
float rotation = 0;
float scale;
int number =  6;
void draw() {
  background(0);

  for (int i=0; i<number; i++) {

    scale = sin(rotation*0.01);
    pushMatrix();
    translate(width/2, height/2);
    rotate(radians(rotation+(i/scale)*16));
    circles(0, 0, 20, 20);
    smallCircles(0, 0, 3, 3);

    popMatrix();
  }
  rotation+=2;

//  saveFrame("####.out.png");

if (radians(rotation) >=PI & scale >=0){
  noLoop();
}
  
}




void circles(int a, int b, int c, int d) {
  stroke(19, 139, 234);
  ellipse(a, b, c, d);
  if (a<width) {
    circles(a+1, b+1, c+50, d+50);
  }
}

void smallCircles(int e, int f, int g, int h) {
  stroke(255);
  ellipse(e, f, g, h);
  if (e<width) {
    smallCircles(e+1, f+20, 2, 2);
  }
}
