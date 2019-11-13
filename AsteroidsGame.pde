Spaceship minx; //= new Spaceship();

public void setup(){
  size(500,500);
  background(0);
  minx = new Spaceship();

}
public void draw(){
	background(0);
  	minx.move();
  	minx.show();
  	System.out.println(minx.getMyPD());
}

public void keyPressed(){
	if (key == 'e'){
		minx.hyperspace();
	}
	if (key == 'w'){minx.w();}
	if (key == 'a'){minx.a();}
	if (key == 's'){minx.s();}
	if (key == 'd'){minx.d();}
}
