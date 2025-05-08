//week12_03_gundam_angle_ID_2
PShape uparm1, upuparm1, hand1, body, head, uparm2, upuparm2, hand2, calf1, calf2, foot1, foot2, leg1, leg2;
void setup() {
  size(400, 400, P3D);
  body = loadShape("body.obj");
  head = loadShape("head.obj");
  uparm1 = loadShape("uparm1.obj");
  upuparm1 = loadShape("upuparm1.obj");
  hand1 = loadShape("hand1.obj");
  uparm2 = loadShape("uparm2.obj");
  upuparm2 = loadShape("upuparm2.obj");
  hand2 = loadShape("hand2.obj");
}
float[] angleX = new float[10];
float[] angleY = new float[10];
int ID = 0;
void keyPressed(){
  if(key == '0')ID = 0 ;
  if(key == '1')ID = 1 ;
  if(key == '2')ID = 2 ;
  if(key == '3')ID = 3 ;
  if(key == '4')ID = 4 ;
  if(key == '5')ID = 5 ;
  if(key == '6')ID = 6 ;
  if(key == '7')ID = 7 ;
  if(key == '8')ID = 8 ;
  if(key == '9')ID = 9 ;
  
}
void mouseDragged(){
  angleX[ID] += mouseX - pmouseX;
  angleY[ID] += mouseY - pmouseY;
}
void draw() {
  background(255);
  translate(width/2, height/2+100);
  sphere(5);//原點點

  scale(10, -10, 10);

  shape(body, 0, 0);
  pushMatrix();
    translate(0, 22.5);
    rotateZ(angleX[0]/10);
    rotateX(angleY[0]/10);
    translate(0, -22.5);
    shape(head, 0, 0);
  popMatrix();

  
  pushMatrix();
    translate(-2.9, 20.8);
    rotateY(angleX[1]/10);
    rotateX(angleY[1]/10);
    translate(2.9, -20.8);
    //translate(mouseX/10.0,-mouseY/10.0);
    //println(mouseX/10.0,-mouseY/10.0);
    shape(upuparm1, 0, 0);//上上臂
    pushMatrix();
      translate(-4.1, 19.9);
      rotateZ(angleX[2]/10);
      rotateX(angleY[2]/10);
      translate(4.1, -19.9);
      shape(uparm1, 0, 0);//上臂
      pushMatrix();
        translate(-4.5, 17.5);
        rotateZ(angleX[3]/10);
        rotateX(angleY[3]/10);
        translate(4.5, -17.5);
        shape(hand1, 0, 0);//手
      popMatrix();
    popMatrix();
  popMatrix();
  
  
    
  pushMatrix();
    translate(2.9, 20.8);
    rotateY(angleX[4]/10);
    rotateX(angleY[4]/10);
    translate(-2.9, -20.8);
    shape(upuparm2, 0, 0);//上上臂
    pushMatrix();
      translate(4.1, 19.9);
      rotateZ(angleX[5]/10);
      rotateX(angleY[5]/10);
      translate(-4.1, -19.9);
      shape(uparm2, 0, 0);//上臂
      pushMatrix();
        translate(4.5, 17.5);
        rotateY(angleX[6]/10);
        rotateX(angleY[6]/10);
        translate(-4.5, -17.5);
        shape(hand2, 0, 0);//手
        popMatrix();
      popMatrix();
  popMatrix();
}
