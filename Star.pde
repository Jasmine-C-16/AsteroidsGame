class Star //note that this class does NOT extend Floater
{

  private int x,y,size,r,g,b;
  
  Star(){
  	x = (int)(Math.random()*500);
  	y = (int)(Math.random()*500);
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
