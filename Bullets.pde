class Bullets extends Floater{
	double dRadians;
	double sx, sy;

	Bullets(Spaceship theShip){ 
		sx = theShip.getMyDX();
		sy = theShip.getMyDY();
		myCenterX = theShip.getmyCenterX();
		myCenterY = theShip.getmyCenterY();
		myPointDirection = theShip.getMyPD();
		dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + theShip.getMyDX();
		myDirectionY = 5 * Math.sin(dRadians) + theShip.getMyDY();
		myColor = color((int)(Math.random()*225),(int)(Math.random()*225),(int)(Math.random()*225));
	}

	public void show(){
		stroke(70,212,152);
		fill(myColor);
		ellipse((float)myCenterX,(float)myCenterY,4.0,4.0);
	}

	public double getMyCenterX(){
		return myCenterX;
	}

	public double getMyCenterY(){
		return myCenterY;
	}
	public void move(){
		myCenterX += myDirectionX;    
     	myCenterY += myDirectionY; 
 		
	}

}