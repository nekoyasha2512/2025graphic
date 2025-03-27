//week06_04_box_push_T_R_T__box_pop
//組裝機械臂
void setup() {
  size(500, 400, P3D);
}
void draw() {
  background(255);
  translate(width/2,height/2);
  sphere(10);//做為中心參照物
  
  box(200,25,25);//step05手肘
  
  fill(252,131,77);
  pushMatrix();
    translate(x,y); //step06
    if(mousePressed) rotateZ(radians(frameCount));
    translate(25,0,0);//step02,中心在左側
    box(50,25,50);//step01
  popMatrix();
}
float x=0, y=0;//step06
void mouseDragged(){//step06拖曳到位置
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + " y:" + y);//step07 印出數值
}
