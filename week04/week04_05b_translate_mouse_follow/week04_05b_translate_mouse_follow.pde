//week04_05b_translate_mouse_follow
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  //translate(width/2,height/2);
    
    translate(mouseX,mouseY);//跟著滑鼠移動
    rotateZ(radians(frameCount));//對Z軸旋轉
    translate(0,-50);//把下端移到中心
    
    box(10,100,10);//轉動用的長方塊
}
