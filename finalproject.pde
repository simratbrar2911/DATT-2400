float t =0.0;
float dt = 0.01;
float amplitude = 20.0;
float frequency = 3;
float r = random(0, 255);
float b = random(0, 255);
float g = random(0, 255);


color c = color(r, g, b, random(0, 255));


void setup() {
  size(600, 600);

  stroke(c);
  strokeWeight(0.7);
}

void draw() {


  background(0);
  noFill();




  for (int i =0; i<width/20+100; i++) {

    strokeWeight(2);
    line(0, 0, 0, 600);
    line(0, 0, 600, 0);
    line(600, 0, 600, 600);
    line(0, 600, 600, 600);



    rect(i*5, amplitude* sin(frequency*(t+i))+height/4, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/3, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/2, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/600, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/6, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/12, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/2.4, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/1.7, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/1.5, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/1.33, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/1.2, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height/1.09, 10, 10);
    rect(i*5, amplitude* sin(frequency*(t+i))+height, 10, 10);
  }
  t += dt;
}
