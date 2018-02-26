import gazetrack.*;

GazeTrack gazeTrack;

void setup() 
{
  fullScreen();
  
  // Gaze cursor param.
  noFill();
  stroke(50, 100);
  strokeWeight(4);
  
  gazeTrack = new GazeTrack(this); 
  
}

void draw() 
{
  background(255);
  drawMaze();
  
  if (gazeTrack.gazePresent())
  {
    ellipse(gazeTrack.getGazeX(), gazeTrack.getGazeY(), 40, 40);
    
    // Print the tracker's timestamp for the gaze cursor above
    println("Latest gaze data at: " + gazeTrack.getTimestamp());
  }
}

void drawMaze() {
    strokeWeight(5);
 
    line(275, 250, 275, 100);
    line(320, 250, 320, 150);
    line(275, 100, 550, 100);
    line(320, 150, 400, 150);
    line(400, 150, 400, 200);
    line(400, 200, 370, 200);
    line(370, 200, 370, 250);
    line(370, 250, 450, 250);
    line(450, 250, 450, 100);
 
 
    line(225, 250, 275, 250);
    line(225, 300, 275, 300);
    line(225, 150, 225, 250);
    line(225, 300, 225, 400);
    line(175, 100, 175, 450);
 
    line(175, 100, 275, 100);
    line(175, 450, 275, 450);
    line(275, 450, 275, 350);
    line(275, 350, 450, 350);
    line(275, 300, 500, 300);
    line(500, 150, 500, 450);
    line(450, 350, 450, 400);
    line(500, 450, 350, 450);
    line(450, 400, 325, 400);
 
    line(350, 450, 350, 500);
    line(350, 500, 350, 450);
    line(350, 500, 125, 500);
    line(125, 500, 125, 50);
    line(125, 50, 600, 50);
 
    line(550, 100, 550, 500);
    line(600, 0, 600, 600);
    line(0, 600, 0, 0);
    line(0, 0, 600, 0);
    line(600, 600, 0, 600);
 
    line(550, 500, 400, 500);
    line(400, 500, 400, 550);
    line(400, 550, 75, 550);
    line(75, 550, 75, 100);
 
    line(75, 100, 25, 100);
    line(25, 0, 25, 600);
    line(75, 100, 75, 50);
 
    line(450, 600, 450, 550);
    line(450, 550, 550, 550);
}