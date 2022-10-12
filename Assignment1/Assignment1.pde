int rows = 6;
int cols = 6;

int stepx;
int stepy;

void setup() {
  background(255);
  size(600, 600);
 
  strokeWeight(random(6));
  stepx = (width/cols);
  stepy = (height/rows);
  
}

void draw() {
 


// drawing the 6 by 6 grid.
  for (int i= 0; i < cols; i++) {
    for (int j= 0; j < rows; j++) {

     
      fill(206, 176, 142);
      rect(i*stepx, j*stepy, stepx, stepy);



//draws the bigger circles. 
      for (int a1= 0; a1 <= 600; a1= a1 + 100) {
        for (int a2= 0; a2 <= 600; a2 = a2 +100) {

          fill(196, 160, 117);
          ellipse(a1, a2, 50, 50);
        }
      }

//draws the smaller circles. 
      for (int h1= 50; h1 <= 600; h1= h1 + 100) {
        for (int h2= 50; h2 <= 600; h2 = h2 +100) {


          fill(167, 139, 103);
          ellipse(h1, h2, 30, 30);
          
       //   frameRate(1);
        }
      }

// draws the smallest circle in small  circle.
      for (int b1= 50; b1 <= 600; b1= b1 + 100) {
        for (int b2= 50; b2 <= 600; b2 = b2 +100) {


          fill(167, 139, 103);
          ellipse(b1, b2, 5, 5);
        }
      }
//draws the smallest circle in the bigger circle

      for (int c1= 0; c1 <= 600; c1= c1 + 100) {
        for (int c2= 0; c2 <= 600; c2 = c2 +100) {

          fill(196, 160, 117);
          ellipse(c1, c2, 5, 5);
        }
      }
// line 67-93 draws line diagonal accross the grid.
          line(0,0,600,600);
          line(100, 0, 600, 500);
          line(200, 0, 600, 400);
          line(300, 0, 600, 300);
          line(400, 0, 600, 200);
          line(500, 0, 600, 100);



          line(0, 100, 500, 600);
          line(0, 200, 400, 600);
          line(0, 300, 300, 600);
          line(0, 400, 200, 600);
          line(0, 500, 100, 600);


          line(0, 100, 100, 0);
          line(0, 200, 200, 0);
          line(0, 300, 300, 0);
          line(0, 400, 400, 0);
          line(0, 500, 500, 0);
          line(0, 600, 600, 0);
          line(100, 600, 600, 100);
          line(200, 600, 600, 200);
          line(300, 600, 600, 300);
          line(400, 600, 600, 400);
          line(500, 600, 600, 500);
          noFill();
        }
      }
      // saves the image 
      save("assignment.png");
    }
    
