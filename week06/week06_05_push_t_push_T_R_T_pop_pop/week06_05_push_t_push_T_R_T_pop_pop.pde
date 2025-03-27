//week06_05_push_t_push_T_R_T_pop_pop
//組裝機械臂
void setup() {
  size(500, 400, P3D);
}
void draw() {
  background(255);
  translate(width/2,height/2);
  sphere(10);//做為中心參照物
  
  
  fill(252,131,77);
  pushMatrix();//step04 新的矩陣
    translate(x,y);//step05 拖曳整個下臂
    box(200,50,25);//手肘
    //step03加入新的階層,往右縮排
    //_________________________________________________________________________________
    pushMatrix();
      translate(100,0);//step01指定到確定的座標
      //if(mousePressed) 
      rotateZ(radians(frameCount));//step02 只轉動,不等待mousePressed
      translate(25,0,0);//中心在左側
      box(50,25,50);
    popMatrix();
    //_____________________________________________________________________________________
  popMatrix();
}
float x=0, y=0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + " y:" + y);
}
