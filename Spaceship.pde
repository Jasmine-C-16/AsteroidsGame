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

    	myColor = color(220,0,42);

    	myCenterX = 100;
    	myCenterY = 100;

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
 		//myDirectionX;
		// if(myPointDirection>=270)myPointDirection-=6;
		// if(myPointDirection<270)myPointDirection+=6;
		// myPointDirection=270;
		
	}
	public void a(){
		//myCenterX+=myDirectionX;
		//myDirectionX-=1;
		turn(-2);
		// if(myPointDirection>=180)myPointDirection-=6;
		// if(myPointDirection<180)myPointDirection+=6;
		//myPointDirection=180;
	}

	public void s(){
		// myCenterY+=myDirectionY;
		// myCenterX+=myDirectionX;
		accelerate(-0.15);
		// if(myPointDirection>=90)myPointDirection-=6;
		// if(myPointDirection<90)myPointDirection+=6;
		// myPointDirection=90;
	}
	public void d(){
		//myCenterX+=myDirectionX;
		//myDirectionX+=1;
		//myPointDirection+=0.2;
		turn(2);
		// if(myPointDirection!=0 && myPointDirection!=360)myPointDirection+=6;
		// if(myPointDirection<180)myPointDirection+=6;
		// else if(myPointDirection<0)myPointDirection+=6;
		// myPointDirection=0;
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
	public int getMyDX(){
		return myDirectionX;
	}
	public int getMyDY(){
		return myDirectionY;
	}

}
