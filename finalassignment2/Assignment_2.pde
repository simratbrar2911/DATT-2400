void setup() {
  size(600, 600);
  noFill();
  strokeWeight(2);
  
  ellipseMode(CENTER);
}
float rt = 0;
float sv;
int number =  4;
void draw() {
  background(0);

  for (int i=0; i<number; i++){
    
  sv = tan(rt*0.01);
  pushMatrix();
  translate(width/2, height/2);
  rotate(radians(rt+(i*sv)*38));
  
  
  circles(0, 0, 20, 20);

  smallCircles(0, 0, 3, 3);
  popMatrix();
  }
  rt+=2;
}


void circles(int a, int b, int c, int d) {
 stroke(19,139,234);
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
 //saveFrame("##.png");
}
 
