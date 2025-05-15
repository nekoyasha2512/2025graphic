//week13_06_
//整合第13周內容
import processing.video.*;
PImage img;
Movie movie;
Capture video;
void setup(){
  size(400,400,P3D);
  movie = new Movie(this, "street.mov");
  movie.loop();
  img = loadImage("chessboard.png");
  textureMode(NORMAL);
  video = new Capture(this, 640,480);
  video.start();
}
float x = 200, y = 200, z = 200, angle = 270;
void keyPressed(){
  if(keyCode==LEFT) angle--;
  if(keyCode==RIGHT) angle++;
  if(keyCode==UP){
   x +=cos(radians(angle));
   z +=sin(radians(angle));
  }
  if(keyCode==DOWN){
   x -=cos(radians(angle));
   z -=sin(radians(angle));
  }
}
void draw(){
 if(keyPressed) keyPressed();
 camera(x, y, z,  x+cos(radians(angle)), y, z+sin(radians(angle)),  0, 1, 0);
 background(128);
 if(movie.available())movie.read();
 beginShape(); //正前方的牆
 texture(img);
 vertex(  0,   0, 0, 0, 0);
 vertex(400,   0, 0, 1, 0);
 vertex(400, 400, 0, 1, 1);
 vertex(  0, 400, 0, 0, 1);
 endShape();
 image(movie, 0, 0, 360, 240);
 if(video.available())video.read();
 beginShape(); //左側的牆
 texture(video);
 vertex(0,   0,   0, 0, 0);
 vertex(0, 400,   0, 1, 0);
 vertex(0, 400, 400, 1, 1);
 vertex(0,   0, 400, 0, 1);
 endShape();
}
