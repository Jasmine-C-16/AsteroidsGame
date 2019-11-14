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

    	myColor = (255);

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
 		myCenterX = Math.random()*500;
 		myCenterY = Math.random()*500;
 		myPointDirection = (int) (Math.random()*360);
 	}

 	public void w(){
 		//myCenterY+=myDirectionY;
		myDirectionY-=1;
		if(myPointDirection>=270)myPointDirection-=6;
		if(myPointDirection<270)myPointDirection+=6;
		
	}
	public void a(){
		//myCenterX+=myDirectionX;
		myDirectionX-=1;
		if(myPointDirection>=180)myPointDirection-=6;
		if(myPointDirection<180)myPointDirection+=6;
	}

	public void s(){
		//myCenterY+=myDirectionY;
		myDirectionY+=1;
		if(myPointDirection>=90)myPointDirection-=6;
		if(myPointDirection<90)myPointDirection+=6;
	}
	public void d(){
		//myCenterX+=myDirectionX;
		myDirectionX+=1;
		if(myPointDirection>=180)myPointDirection+=6;
		if(myPointDirection<180)myPointDirection-=6;
	}

	public double getMyPD(){
		return myPointDirection;
	}

}
