//week06_01_translate_rotate_matrix
void setup() {
  size(500, 500, P3D);
}
void draw() {
  background(142);
  ellipse(width/2, height/2, 200, 200);
  translate(width/2, height/2);
  pushMatrix();
    if(mousePressed) rotateZ(radians(frameCount));
    box(100, 30, 30);
  popMatrix();
}
