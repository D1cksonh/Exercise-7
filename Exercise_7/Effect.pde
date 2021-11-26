class Effect {
  float circleX;
  float tempY, tempX, tempColor;
  float redX, blueX, greenX;
  
  Effect(float tempX,float tempColor){
    circleX = tempX;
    redX = tempColor;
    greenX = tempColor;
    blueX = tempColor;
  }
  
  void circles(){
    ellipse(circleX,600,50,50); 
  }
  
  void grayGraphics(){
    fill(redX,0,0);
    
    if(mousePressed && mouseY < 650 && mouseY > 550 && mouseX < circleX+50 && mouseX > circleX-50){ 
      pushMatrix();
      graphics.beginDraw();
      graphics.image(img,0,0);
      graphics.filter(GRAY);
      graphics.endDraw();
      image(graphics,65,30);
      popMatrix();
    }
  }
  
  void blurGraphics() {
    fill(0,greenX,0);
    
    if(mousePressed && mouseY < 650 && mouseY > 550 && mouseX < circleX+50 && mouseX > circleX-50){ 
      pushMatrix();
      graphics.beginDraw();
      graphics.image(img,0,0);
      graphics.filter(BLUR);
      graphics.endDraw();
      image(graphics,65,30);
      popMatrix();
    }
  }
  
  void invertGraphics() {
    fill(0,0,blueX);
    
    if(mousePressed && mouseY < 650 && mouseY > 550 && mouseX < circleX+50 && mouseX > circleX-50){ 
      pushMatrix();
      graphics.beginDraw();
      graphics.image(img,0,0);
      graphics.filter(INVERT);
      graphics.endDraw();
      image(graphics,65,30);
      popMatrix();
    }
  }
}
