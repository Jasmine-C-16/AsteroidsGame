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

    	myColor = color(230,12,42);

    	myCenterX = 250;
    	myCenterY = 250;

    	myDirectionX =0;
    	myDirectionY =0;

    	myPointDirection = 0;
    }


 	public void hyperspace(){
 		background(244,35,69);
 		myDirectionX = 0;
 		myDirectionY = 0;
 		myCenterX = Math.random()*400;
 		myCenterY = Math.random()*400;
 		myPointDirection = (int) (Math.random()*360);
 	}

 	public void w(){
 		accelerate(0.15);
	}
	public void a(){
		turn(-4);
	}
	public void s(){
		accelerate(-0.15);
	}
	public void d(){
		turn(4);
	}
	public void q(){
		myPointDirection-=6;
	}
	public void e(){
		myPointDirection+=6;
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

}
