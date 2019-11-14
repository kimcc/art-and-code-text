PFont font;

int x = 20;
int y = 100;

int myColor = 0;

void setup() {
  // Change frame rate. Default is 30
  frameRate(54);
  
  //Set the canvas color and size
  background(0,0,0);
  size(1920, 1080);
  // Set color mode
  colorMode(HSB);
  
  // Create the font
  font = createFont("UbuntuMono-R.ttf", 120);
  fill(myColor, 255, 255);
  textSize(120);
  textFont(font);
}

void draw() {
  // Draw the shadow text and offset
  fill(0,0,0);
  text("ART AND CODE", x, y);
  x++;
  y++;
  
  // Change color
  if (myColor>=255) {
     myColor = 0;
  } else {
    myColor++;
  }
  
  fill(myColor, 255, 255);
  
  // Draw color text and offset
  text("ART AND CODE", x, y);
  x+=8;
  y+=5;
  
  // Save each frame as an image to combine into a movie
  saveFrame(); 

}
