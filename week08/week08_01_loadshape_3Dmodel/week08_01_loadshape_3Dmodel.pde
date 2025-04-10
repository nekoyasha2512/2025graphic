//week08_loadshape_3Dmodel
size(500,500,P3D);
PShape gundam = loadShape("Gundam.obj");//讀入模型
translate(width/2,height/2);
pushMatrix();
  translate(0,100);
  scale(10, -10, 10); //放大十倍
  //建模軟體座標系統與processing不同，Y軸正負相反導致模型讀入後會上下顛倒
  shape(gundam,0,0);//畫出讀入的shape
popMatrix();
