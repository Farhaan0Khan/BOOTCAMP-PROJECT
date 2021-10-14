import processing.sound.*;   // Import the library that does the sound handling.
 
SoundFile song;     // The extended song to play
boolean isPlaying;
 
void setup()
{
  size(400, 250);
  textSize(36);
  textAlign(CENTER,CENTER);
  song  = new SoundFile(this, "TEST SOUND.");
  song.play();
  isPlaying = true;
}
 
void draw()
{
  background(0);
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
  if (key == ' ')  // Toggle pause on or off.
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
