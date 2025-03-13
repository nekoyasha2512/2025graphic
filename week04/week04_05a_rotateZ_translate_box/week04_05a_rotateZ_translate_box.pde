//week04_05a_rotateZ_translate_box
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
    
    //旋轉軸座標預設在正中心
    //以下兩行可以註解觀察結果
    rotateZ(radians(frameCount));//對Z軸旋轉
    translate(0,-50);//把下端移到中心
    
    box(10,100,10);//轉動用的長方塊
}
