//week08_02_gundam_rotateY
//轉動
PShape gundam;
void setup(){
  size(500,500,P3D);
  gundam = loadShape("Gundam.obj");
}
void draw(){
  background(125);
translate(width/2,height/2);
pushMatrix();
  translate(-50,100);
  rotateY(radians(frameCount));
  scale(10, -10, 10); 
  shape(gundam,0,0);
popMatrix();
pushMatrix();
  translate(100,100);
  rotateY(radians(frameCount*180));
  scale(10, -10, 10); 
  shape(gundam,0,0);
popMatrix();
}
