Spaceship minx; 
Star[] stars;
//Asteroids[] aster;
ArrayList <Asteroids> aster;
int astnum, starnum;

public void setup(){
  size(500,500);
  background(0);
  
  astnum = 10;
  starnum = 200;

  minx = new Spaceship();
  stars = new Star[starnum];
  aster = new ArrayList <Asteroids>(astnum);

  for (int i=0; i<starnum; i++){
  	stars[i] = new Star();
  }
  for (int i=0; i<aster.size(); i++){
  	aster.set(i,new Asteroids());
  }

}
public void draw(){
	background(0);

	for (int i=0; i<starnum; i++){
  		stars[i].show();
 	}

 	for (int i=0; i<aster.size(); i++){
  	if(dist((float)(aster.get(i,myCenterX)), (float)(aster.get(i,getmyCenterY())), (float)(minx.getmyCenterX()),(float)(minx.getmyCenterX()))>10){
    	aster[i].move();
      aster[i].show();
    }
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

	// if (key == 'q'){minx.q();}
	// if (key == 'e'){minx.e();}
}
