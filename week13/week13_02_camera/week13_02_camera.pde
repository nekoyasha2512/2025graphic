//week13_02_camera
import processing.video.*;
Movie movie;
void setup(){
  size(720, 480, P3D);
  movie = new Movie(this, "street.mov");
  movie.loop();//循環播放
}
void draw(){
  background(128);
  camera(mouseX,mouseY,500,  360,240,0,  0,1,0);
  //camera(eyeX,eyeY,eyeZ,centerX,centerY,centerZ,upX,upY,upZ)
  
  if(movie.available()) movie.read();
  image(movie,0,0);
}
