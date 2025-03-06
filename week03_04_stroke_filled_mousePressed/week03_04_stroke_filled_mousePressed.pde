//week03_04_stroke_filled_mousePressed_2
void setup() {
  size(500, 500);
}
void draw() {
  //background(255);
  stroke(0);
  fill(255, 0, 0);  //紅色
  rect(0, 0, 50, 50);
  fill(255, 255, 0);  //黃色
  rect(0, 50, 50, 50);
  fill(0, 255, 0);  //綠色
  rect(0, 100, 50, 50);
  fill(0, 0, 255);  //藍色
  rect(0, 150, 50, 50);
  stroke(myStroke);
  if (mousePressed)line(mouseX, mouseY, pmouseX, pmouseY);
}
color myStroke;  //宣告變數
void mousePressed(){
  if (mouseX<50) {
    if (mouseY<50) myStroke = color(255, 0, 0);  //判斷座標位置，把顏色存進變數myStroke
    else if (mouseY<100) myStroke = color(255, 255, 0);
    else if (mouseY<150) myStroke = color(0, 255, 0);
    else if (mouseY<200) myStroke = color(0, 0, 255);
  }
}
