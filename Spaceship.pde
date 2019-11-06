class Spaceship extends Floater  
{   
    Spaceship(){
    	corners = 3;
    	xCorners[0] = -8;
    	yCorners[0] = -8;
    	xCorners[0] = 16;
    	yCorners[0] = 0;
    	xCorners[0] = -8;
    	yCorners[0] = 8;

    	myColor = (200);

    	myCenterX = 100;
    	myCenterY = 100;

    	myDirectionX =10;
    	myDirectionY =10;

    	myPointDirection = 50;
    }

 //    public void move(){
	// myCenterX += myDirectionX;
	// myCenterY += myDirectionY;

	// if (myCenterX<0){myCenterX = w;}
	// else if (myCenterX>w){myCenterX = 0;}
	// else if (myCenterY<0){myCenterY = h;}
	// else if (myCenterY>h){myCenterY = 0;}

	// }

}
