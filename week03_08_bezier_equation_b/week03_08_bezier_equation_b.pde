//week03_08_bezier_equation_b
void setup() {
  size(400, 400);
}
int x1 = 120, x2=320, x3=360, x4=60;
int y1 = 80, y2=20, y3=300, y4=300;  //只改控制點的座標
void draw() {
  background(255);
  line(x1, y1, x2, y2);
  line(x3, y3, x4, y4); //貝氏曲線
  bezier(x1, y1, x2, y2, x3, y3, x4, y4);//貝氏曲線
  float t = frameCount / 200.0 % 1;
  float t2 = 1-t;
  float x = x1*t2*t2*t2 + 3*x2*t*t2*t2 + 3*x3*t*t*t2 + x4*t*t*t;
  float y = y1*t2*t2*t2 + 3*y2*t*t2*t2 + 3*y3*t*t*t2 + y4*t*t*t;
  ellipse(x,y,10,10);
}
