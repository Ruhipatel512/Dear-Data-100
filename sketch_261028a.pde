int lines  = 40;      // <-- number of static lines
int linesR = 40;      // <-- number of rotated lines
float yTop, yBot ;
  
  
void setup () {
  
  size(300, 300);
  translate(width/2, height/2);  // <-- translate origin to centre of canvas
  
  yTop = -height*0.4;   // <-- min y position of lines (after translation)
  yBot =  height*0.4;   // <-- max y position of lines (after translation)
}
  
  
void draw () {
  
  background(255);
  
  translate(width/2, height/2);
    
  strokeWeight(map(mouseY, height,0, 12,1));
  
  // -- vertical lines:
  for (int i=0; i<lines; i++) {
    float x = map (i, 0, lines-1, -width*0.4, width*0.4);
    line (x, yTop, x, yBot);
  }
   
  strokeWeight(map(mouseX, width,0, 12,1));
 
  // -- rotated lines :
  rotate(map(mouseX, 0, width, 0, 2*TWO_PI));
  
  for (int i=0; i<linesR; i++) {
    float x = map (i, 0, linesR-1, -width*0.4, width*0.4);
    line (x, yTop, x, yBot);
  }
}
  
  
void mouseClicked () {
  // -- change number of lines based upon mouse position:
  lines  = int(map(mouseX, 0,width,  3,100));
  linesR = int(map(mouseY, 0,height, 3,100));
}
