Spaceship minx; //= new Spaceship();
Star[] stars;

public void setup(){
  size(500,500);
  background(0);
  minx = new Spaceship();
  stars = new Star[300];

  for (int i=0; i<300; i++){
  	stars[i] = new Star();
  }

}
public void draw(){
	background(0);

	for (int i=0; i<300; i++){
  	stars[i].show();
 	}
 	
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
