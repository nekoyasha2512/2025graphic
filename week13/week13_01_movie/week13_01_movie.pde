//week13_02_movie
//Sketch - Library - Manage Libraries - Video Library for processing
import processing.video.*; //匯入video函式庫
//Capture video; //宣告視訊變數video
Movie movie;
void setup(){
  size(640, 480);
  //video = new Capture(this, 640, 480);
  //video.start();//打開視訊
  movie = new Movie(this, "street.mov");
  movie.loop();
}
void draw(){
  //video.read();
  movie.read();
//  image(video, 0, 0);
  image(movie, 0, 0);
}
