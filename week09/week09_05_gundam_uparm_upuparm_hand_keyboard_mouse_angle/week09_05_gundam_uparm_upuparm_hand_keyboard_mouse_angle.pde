//week09_05_gundam_uparm_upuparm_hand_keyboard_mouse_angle
PShape uparm1,upuparm1,hand1;
void setup() {
  size(400, 400, P3D);
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
}
float []angle = new float[20];//20個關節角度
int ID = 0; //用來指定關節的代碼，angle[ID]的資料會儲存旋轉的角度
void keyPressed(){
  if(key=='1') ID = 1; //按下鍵盤1指定到第一個關節(肩膀)
  if(key=='2') ID = 2; //按下鍵盤2指定到第二個關節(手肘)
}
void mouseDragged(){
  angle[ID] += mouseX - pmouseX;//X軸的移動 改變關節角度
}
void draw() {
  background(255);
  translate(width/2, height/2+100);
  sphere(5);//原點
  
  scale(10, -10, 10);
  
  shape(upuparm1, 0, 0);//上上臂
  pushMatrix();
    translate(-4.1,19.9);
    rotateZ(radians(angle[1]));
    translate(4.1,-19.9);
    //translate(mouseX/10.0, -mouseY/10.0);//移動，尋找適合的座標
    //println(mouseX/10.0, -mouseY/10.0);//印出座標
    shape(uparm1, 0, 0);//上臂
    pushMatrix();
      translate(-4.5,17.5);
        rotateX(radians(angle[2]));
      translate(4.5,-17.5);
      //translate(mouseX/10.0, -mouseY/10.0);//移動，尋找適合的座標
      //println(mouseX/10.0, -mouseY/10.0);//印出座標
     shape(hand1, 0, 0);//手
    popMatrix();
  popMatrix();
}
