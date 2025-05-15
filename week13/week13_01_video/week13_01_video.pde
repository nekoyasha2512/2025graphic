//week13_01_video
//Sketch - Library - Manage Libraries - Video Library for processing
import processing.video.*; //匯入video函式庫
Capture video; //宣告視訊變數video
void setup(){
  size(640, 480);
  video = new Capture(this, 640, 480);
  video.start();//打開視訊
}
void draw(){
  video.read();
  image(video, 0, 0);
}
