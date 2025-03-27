//week06_07_push_T_R_T_pop_3times
//組裝機械臂
void setup() {
  size(500, 800, P3D);
}
void draw() {
  background(255);
  translate(width/2,height/2);
  sphere(10);//做為中心參照物
  
  
  fill(252,131,77);
  pushMatrix();//縮排後加入新的階層矩陣
    if(mousePressed && mouseButton == RIGHT) rotateX(radians(frameCount*50));//step02 右鍵旋轉
    if(mousePressed && mouseButton == RIGHT) rotateY(radians(frameCount*50));//step02 右鍵旋轉
    if(mousePressed && mouseButton == RIGHT) rotateZ(radians(frameCount*50));//step02 右鍵旋轉
    translate(x,y);//step01移動整個手臂 0,100移動到視窗中心
    box(50,200,25);//上臂
    //=================================================================================
    pushMatrix();
      translate(0,-100);//移動到指定座標
      //if(mousePressed) //不等待mousePressed
      rotateZ(radians(frameCount));//轉動下臂
      translate(100,0);//下臂移動座標
      box(200,50,25);//手肘
     
      //_________________________________________________________________________________
      pushMatrix();
        translate(100,0);
        //if(mousePressed) 
        rotateZ(radians(frameCount));
        translate(25,0,0);//中心在左側
        box(50,25,50);
      popMatrix();
      //_____________________________________________________________________________________
    popMatrix();
    //=================================================================================
  popMatrix();
}
float x=0, y=0;
void mouseDragged(){
  x += mouseX - pmouseX;
  y += mouseY - pmouseY;
  println("x:" + x + " y:" + y);
}
