//week05_3b_atan2_radians_degrees
void setup() {
  size(400, 400);
}
void draw() {
  background(0);
  line(200,200,400,200);
  line(200, 200, mouseX, mouseY);
  float dx = mouseX-200, dy = mouseY-200;
  float a = atan2(dy,dx);  //三角函式, 計算指定的弧度
  //atan2()的值介於-PI ~ +PI之間
  if(a<0) arc(200,200,200,200,a,0,PIE);
  else arc(200,200,200,200,0,a,PIE);
  textSize(30);
  text("radians: "+a,100,100); //顯示弧度
  text("degrees: "+degrees(a),100,130); //顯示角度, degrees()換算弧度與角度
}
