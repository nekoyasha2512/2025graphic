//week12_04_sound
//匯入聲音函式庫
//Sketch - Library -  Manage Libraries - Sound | Provide a simple way to work with audio - install
//安裝好後 Files- Examples 點開Libraries核心函式庫會有範例
import processing.sound.*; //抄範例
SoundFile mySound;
void setup(){
  size(400,400);
  mySound = new SoundFile(this, "music.mp3"); //抄範例
  mySound.play();
}
void draw(){ //需要draw()函式才會持續更新畫面&音效

}
