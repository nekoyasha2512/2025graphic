//week08_03_another_obj
//轉動
PShape model;
void setup(){
  size(500,500,P3D);
  model = loadShape("FinalBaseMesh.obj");
}
void draw(){
  background(255);
  lights();
translate(width/2,height/2);
pushMatrix();
  translate(0,100);
  rotateY(radians(frameCount));
  scale(10, -10, 10); 
  shape(model,0,0);
popMatrix();
}
