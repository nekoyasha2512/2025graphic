//week12_05_soundFXs
import processing.sound.*; //抄範例
SoundFile sndInGame, sndIntro, sndMonkey, sndSword;
void setup(){
  size(400,400);
  sndInGame = new SoundFile(this,"In Game Music.mp3");
  sndIntro = new SoundFile(this,"Intro Song_Final.mp3");
  sndMonkey = new SoundFile(this,"Monkey 1.mp3");
  sndSword = new SoundFile(this,"sword slash.mp3");
  sndIntro.play();
}
boolean playingIntro = true;
void keyPressed(){
  if(playingIntro){
    sndIntro.stop();
    sndInGame.play();
    playingIntro = false;
  }
  else{
    sndInGame.stop();
    sndIntro.play();
    playingIntro = false;
  }
}
void mousePressed(){
  if(mouseButton == LEFT) sndSword.play();
  if(mouseButton == RIGHT) sndMonkey.play();

}
void draw(){ //需要draw()函式才會持續更新畫面&音效

}
