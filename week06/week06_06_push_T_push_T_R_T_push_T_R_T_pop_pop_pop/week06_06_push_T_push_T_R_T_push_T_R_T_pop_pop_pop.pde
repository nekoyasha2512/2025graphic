//week06_06_push_T_push_T_R_T_push_T_R_T_pop_pop_pop
//組裝機械臂
void setup() {
  size(500, 400, P3D);
}
void draw() {
  background(255);
  translate(width/2,height/2);
  sphere(10);//做為中心參照物
  
  
  fill(252,131,77);
  
  pushMatrix();//step04 縮排後加入新的階層矩陣
    box(50,200,25);//step03上臂
    //=================================================================================
    pushMatrix();
      translate(x,y);//step03移動下臂(到上臂)
      if(mousePressed) rotateZ(radians(frameCount));//step02轉動下臂
      translate(100,0);//step01下臂移動座標
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
