//week04_05_robot_arm
void setup(){
  size(400,400,P3D);
}
void draw(){
  background(128);
  translate(width/2,height/2);
  pushMatrix();
    translate(0,100);
    box(50);  //基座
    pushMatrix();
    translate(0,-25);
    rotateZ(radians(mouseX));
    translate(0,-50);
    box(10,100,10);
    popMatrix();
  popMatrix();
}
