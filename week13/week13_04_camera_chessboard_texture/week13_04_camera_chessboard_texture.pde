//week13_04_camera_chessboard_texture
//將texture和camera整合
PImage img;
void setup(){
  size(400,400,P3D);
  img = loadImage("chessboard.png"); //讀入圖檔
  textureMode(NORMAL);//貼圖模式
}
void draw(){
  camera(mouseX, 200, mouseY, mouseX, 200, mouseY-10, 0, 1, 0);
  background(128);
  beginShape();
  texture(img);
  vertex(0, 0, 0, 0, 0); //x, y, z, u, v
  vertex(400, 0, 0, 1, 0);
  vertex(400, 400, 0, 1, 1);
  vertex(0, 400, 0, 0, 1);
  endShape();
  
  beginShape();
  texture(img);
  vertex(0, 0, 0, 0, 0); //x, y, z, u, v
  vertex(0, 400, 0, 1, 0);
  vertex(0, 400, 400, 1, 1);
  vertex(0, 0, 400, 0, 1);
  endShape();
  
  beginShape();
  texture(img);
  vertex(400, 0, 0, 0, 0); //x, y, z, u, v
  vertex(400, 400, 0, 1, 0);
  vertex(400, 400, 400, 1, 1);
  vertex(400, 0, 400, 0, 1);
  endShape();
}
