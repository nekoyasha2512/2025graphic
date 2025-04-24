//week_05
void setup(){
  size(400,400,P3D); //設定視窗
}
float angle = 0;
void draw(){
  
  background(0,0,0);
  translate(200,200);
  
  rotate(angle);
  angle += 0.01;
  if(angle == 360) angle = 0;
  beginShape(TRIANGLES);// 畫三角形
  fill(255,0,0); vertex(0,100*2);
  fill(0,255,0); vertex(87*2,-50*2);
  fill(0,0,255); vertex(-87*2,-50*2);
  endShape();
}
