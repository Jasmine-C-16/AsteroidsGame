Spaceship ship; 
Star[] stars;
//Asteroids[] aster;
ArrayList <Asteroids> aster;
int astnum, starnum;

public void setup(){
  size(500,500);
  background(0);
  
  astnum = 10;
  starnum = 200;

  ship = new Spaceship();
  stars = new Star[starnum];
  aster = new ArrayList <Asteroids>();

  for (int i=0; i<starnum; i++){
  	stars[i] = new Star();
  }
  for (int i=0; i<astnum; i++){
  	aster.add(i,new Asteroids());
  }

}
public void draw(){
	background(0);

	for (int i=0; i<starnum; i++){
  		stars[i].show();
 	}

 	for (int i=0; i<aster.size(); i++){
  	if(dist((float)(aster.get(i).getmyCenterX()), (float)(aster.get(i).getmyCenterY()),(float)(ship.getmyCenterX()),(float)(ship.getmyCenterX()))>10){
    	aster.get(i).move();
      aster.get(i).show();
      System.out.println(i);
    }
 	}

  ship.move();
  ship.show();
  	
}

public void keyPressed(){
	if (key == 'r'){ship.hyperspace();}
	
	if (key == 'w'){ship.w();}
	if (key == 'a'){ship.a();}
	if (key == 's'){ship.s();}
	if (key == 'd'){ship.d();}

	// if (key == 'q'){ship.q();}
	// if (key == 'e'){ship.e();}
}
