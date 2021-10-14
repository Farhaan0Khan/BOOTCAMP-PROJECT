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
  
  float x = random(width);
  float y = random(height);
  
  fill(random(255), random(255), random(255));
  ellipse(x, y, size, size);
  
  //rect(x, y, size,size);
  //triangle(x-1, y-1, size, size, size, size);
  
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
