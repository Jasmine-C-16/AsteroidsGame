Spaceship ship; 
Star[] stars;
ArrayList <Asteroids> aster;
ArrayList <Bullets> dots;
ArrayList <MiniRocks> rocks;
private int astnum, starnum;
private float hx,hy,ix,iy;
private float wx,wy,xx,xy;

public void setup(){
  size(600,600);
  background(0);
  
  astnum = 10;
  starnum = 400;

  ship = new Spaceship();
  stars = new Star[starnum];
  aster = new ArrayList <Asteroids>();
  dots = new ArrayList <Bullets>();
  rocks = new ArrayList <MiniRocks>();

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
  	if(dist((float)(aster.get(i).getmyCenterX()), (float)(aster.get(i).getmyCenterY()),(float)(ship.getmyCenterX()),(float)(ship.getmyCenterX()))>25){
    	aster.get(i).move();
      aster.get(i).show();
    }
    else{
      aster.remove(i);
    }
 	}

  for (int i=0; i<dots.size(); i++){
    dots.get(i).move();
    dots.get(i).show();
    //System.out.println(dots.get(i).getMyCenterX() + "  " + dots.get(i).getMyCenterY());
    if (dots.get(i).getMyCenterX()>=600 || dots.get(i).getMyCenterY()>=600 || dots.get(i).getMyCenterX()<=0 || dots.get(i).getMyCenterY()<=0){
      dots.remove(i);
    }
  }

  ship.move();
  ship.show();

  for (int i=dots.size(); i>0; i--){
    for (int p=aster.size(); p>0; p--){
      hx=(float)(dots.get(i-1).getMyCenterX());
      hy=(float)(dots.get(i-1).getMyCenterY());
      ix=(float)(aster.get(p-1).getmyCenterX());
      iy=(float)(aster.get(p-1).getmyCenterY());

      if (dist(hx, hy, ix, iy)<30){
        dots.remove(i-1);
        rocks.add(new MiniRocks(aster.get(p-1).getmyCenterX(), aster.get(p-1).getmyCenterY()));
        rocks.add(new MiniRocks(aster.get(p-1).getmyCenterX(), aster.get(p-1).getmyCenterY()));
        //System.out.println(rocks.get(0).getmyCenterX());
        aster.remove(p-1);
        
        break;
      }
    }
  }

  for (int i=0; i<rocks.size()-1; i++){
    rocks.get(i).move();
    rocks.get(i).show();
  }

  for (int i=dots.size(); i>0; i--){
    for (int o=rocks.size(); o>0; o--){
      wx=(float)(dots.get(i-1).getMyCenterX());
      wy=(float)(dots.get(i-1).getMyCenterY());
      xx=(float)(rocks.get(o-1).getmyCenterX());
      xy=(float)(rocks.get(o-1).getmyCenterY());

      if (dist(wx, wy, xx, xy)<30){
        dots.remove(i-1);
        rocks.remove(o-1);
        break;
      }

    }
  }
}

public void keyPressed(){
	if (key == 'r'){ship.hyperspace();}
	
	if (key == 'w'){ship.w();}
	if (key == 'a'){ship.a();}
	if (key == 's'){ship.s();}
	if (key == 'd'){ship.d();}
  if (key == ' '){dots.add(new Bullets(ship));}
}

public void bg(){
  noStroke();
  beginShape(QUAD_STRIP);
  fill(245,10,40);
  vertex(0,0);
  vertex(600,0);
  vertex(0,100);
  vertex(600,100);
  fill(250,140,10);
  vertex(0,200);
  vertex(600,200);
  fill(230,190,20);
  vertex(0,300);
  vertex(600,300);
  fill(80,230,30);
  vertex(0,400);
  vertex(600,400);
  fill(10,30,200);
  vertex(0,500);
  vertex(600,500);
  fill(180,20,210);
  vertex(0,600);
  vertex(600,600);
  endShape();

}