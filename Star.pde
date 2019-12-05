class Star //note that this class does NOT extend Floater
{

  private int x,y,size,r,g,b;
  private int j;
  Star(){
    j = 700;
  	x = (int)(Math.random()*j);
  	y = (int)(Math.random()*j);
  	size = (int)(Math.random()*6);
  	r = (int)(Math.random()*255);
  	g = (int)(Math.random()*255);
	  b = (int)(Math.random()*255);
  }

  public void show(){
  	noStroke();
  	fill(r+50,g+50,b+50);
  	ellipse(x, y, size, size);
  }
}
