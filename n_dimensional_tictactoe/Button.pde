class Button
{
  float x, y, w, h, st;
  int corner1, corner2, corner3, corner4; //how round the corners are
  String label="";
  Boolean selected=false;
  
  Button(float x, float y, float w, String label)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = w;
    this.st = this.h/20;
    this.label = label;
    this.setCorners(20);
  }
  Button(float x, float y, float w, float h, String label)
  {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.st = this.h/20;
    this.label = label;
    this.setCorners(20);
  }
  
  void draw()
  {
    stroke(secCol);
    strokeWeight(this.st);
    fill(primCol);
    rect(this.x, this.y, this.w, this.h, corner1, corner2, corner3, corner4);
    
    fill(secCol);
    textAlign(CENTER, CENTER);
    textSize(this.h/3);
    text(this.label, this.x+this.w/2, this.y+this.h/2);
    
    if(this.selected)
    {
      noStroke();
      fill(secCol, 100);
      rect(this.x, this.y, this.w, this.h, corner1, corner2, corner3, corner4);
    }
  }
  
  void setCorners(int c)
  {
    this.corner1 = c;
    this.corner2 = c;
    this.corner3 = c;
    this.corner4 = c;
  }
  void setCorners(int c1, int c2, int c3, int c4)
  {
    this.corner1 = c1;
    this.corner2 = c2;
    this.corner3 = c3;
    this.corner4 = c4;
  }
  
  boolean mouseOver()
  { return((this.x<=mouseX && this.x+this.w>=mouseX) && (this.y<=mouseY && this.y+this.h>=mouseY)); }
}
