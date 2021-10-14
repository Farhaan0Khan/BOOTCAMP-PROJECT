import processing.sound.*;   // Import the library that does the sound handling.
 
SoundFile song;     // The extended song to play
boolean isPlaying;

void setup() 
{
  size(500, 500); 
  background(203,201,201);
  noStroke();
  song  = new SoundFile(this, "PROJECT.mp3");
  song.play();
  isPlaying = true;
}

void draw() 
{
  background(0);
  
  float size = random (0, 100);
  
  float x;
  float y;
  
  x = random(width);
  y = random(height);
  
  fill(random(255), random(255), random(255));
  ellipse(x, y, size, size);
  
  x = random(width);
  y = random(height);
  rect(x, y, size,size);
  
  x = random(width);
  y = random(height);
  triangle(x, y, x-10, y+10, x-40, y+40);
  
  String message;
  if (isPlaying)
  {
    message = "Playing";
  }
  else
  {
    message = "Paused";
  }
  text(message,width/2,height/2);
}

void keyPressed()
{
 if (key == 's')
 {
   noLoop();
 }
 else 
 {
  loop();
  
if (key == 'p')  // Toggle pause on or off.
  {
    if (isPlaying)
    {
      song.pause();
      isPlaying = false;
    }
    else
    {
      song.play();
      isPlaying = true;
    }
  }
 }
}
