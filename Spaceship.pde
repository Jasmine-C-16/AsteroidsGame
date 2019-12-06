class Spaceship extends Floater  
{   
    Spaceship(){
    	corners = 3;
    	xCorners = new int[corners];
    	yCorners = new int[corners];
    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[1] = 16;
    	yCorners[1] = 0;
    	xCorners[2] = -8;
    	yCorners[2] = 8;

    	myColor = color(70,212,152);

    	myCenterX = 250;
    	myCenterY = 250;

    	myDirectionX =0;
    	myDirectionY =0;

    	myPointDirection = 0;
    }


 	public void hyperspace(){
 		background(244,35,129);
 		myDirectionX = 0;
 		myDirectionY = 0;
 		myCenterX = Math.random()*400;
 		myCenterY = Math.random()*400;
 		myPointDirection = (int) (Math.random()*360);
 	
 	}


 	public void w(){
 		accelerate(0.2);
 		fire();
	}
	public void a(){
		turn(-6);
	}
	public void s(){
		accelerate(-0.2);

		fire();
	}
	public void d(){
		turn(6);
	}

	public double getMyPD(){
		return myPointDirection;
	}
	public double getMyDX(){
		return myDirectionX;
	}
	public double getMyDY(){
		return myDirectionY;
	}
	public double getmyCenterX(){
		return myCenterX;
	}
	public double getmyCenterY(){
		return myCenterY;
	}

	public void fire(){

		float xx = (float)myCenterX;
		float yy = (float)myCenterY;
		fill(255,60,30);
	    noStroke();
		translate((float)myCenterX, (float)myCenterY);    
	    float dRadians = (float)(myPointDirection*(Math.PI/180));
	    rotate(dRadians);
	 
	    beginShape();
	    	vertex(-10,-5);
	    	vertex(-20,0);
	    	vertex(-10,+5);
	    endShape(CLOSE);

	    rotate(-1*dRadians);
	    translate(-1*(float)myCenterX, -1*(float)myCenterY);
	    System.out.println("ff");
	}
}
