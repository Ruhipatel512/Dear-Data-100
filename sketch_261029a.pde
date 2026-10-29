PImage img;
 
void setup() {
  size(640, 530);
  img = loadImage("Holiday.png");
}
 
void draw() {
  int tint_value = round(mouseX*255 / width);
  background(255);
 
  tint(tint_value);
  image(img, 0, 0);
 
  textSize(16);
  fill(0);
  text("tint(" + tint_value + ");", 200, 500);
  text("image(img, 0, 0);", 200, 520);
}
