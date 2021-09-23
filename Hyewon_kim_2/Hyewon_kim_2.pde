float t = 1.0;
float x = 0;
float y = 300;
float red = 30;
float green = 95;
float blue = 35;

void setup(){
  size(900, 600);
  background(200, 220, 255);

  fill(220, 70, 20);
  circle(195, 120, 170);
}

void draw(){
  stroke(red, green, blue, 80);
  strokeWeight(2);
  t += 0.01;
  float n = noise(t) + random(-10, 10);
  x += 2;
  y += n;
  line(x, height, x, y);
  if(x >= width){
    x = 0;
    y = random(200, height);
    red = random(100);
    green = random(200);
    blue = random(100);
  }
}

void keyPressed(){
  background(200, 220, 255);
  
   fill(220, 70, 20);
  circle(195, 120, 170);
}
