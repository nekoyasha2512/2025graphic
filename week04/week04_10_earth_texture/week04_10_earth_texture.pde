//week04_10_earth_texture
size(400,400,P3D);
translate(width/2,height/2);
PShape globe = createShape(SPHERE,100);
PImage img = loadImage("earth.jpg");  //儲存圖片變數
globe.setTexture(img);  //給globe球體加上材質
shape(globe);
