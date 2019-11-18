Spaceship minx; 
Star[] stars;
Asteroids[] aster;

public void setup(){
  size(500,500);
  background(0);
  minx = new Spaceship();
  stars = new Star[300];
  aster = new Asteroids[20];

  for (int i=0; i<300; i++){
  	stars[i] = new Star();
  }
  for (int i=0; i<20; i++){
  	aster[i] = new Asteroids();
  }

}
public void draw(){
	background(0);

	for (int i=0; i<300; i++){
  	stars[i].show();
 	}

 	for (int i=0; i<20; i++){
	 	aster[i].move();
	  	aster[i].show();
 	}
 	
  	minx.move();
  	minx.show();
  	
}

public void keyPressed(){
	if (key == 'r'){minx.hyperspace();}
	
	if (key == 'w'){minx.w();}
	if (key == 'a'){minx.a();}
	if (key == 's'){minx.s();}
	if (key == 'd'){minx.d();}

	if (key == 'q'){minx.q();}
	if (key == 'e'){minx.e();}
}
