class Asteroids extends Floater{
	private int rotspeed;
	Asteroids(){
		rotspeed = (int)((Math.random()*10)-5);
		corners = (int)(Math.random()*7+3);
		xCorners = new int[corners];
		yCorners = new int[corners];

		for (int i=0;i<corners;i++){
			xCorners[i] = (int)((Math.random()*40)-10);
			yCorners[i] = (int)((Math.random()*40)-10);
		}

		myCenterX=0;
		myCenterY=0;
		myDirectionX= Math.random()*16-8;
		myDirectionY= Math.random()*16-8;

		myColor = (175);


	}

	public void move(){
		myCenterX+=myDirectionX;
		myCenterY+=myDirectionY;
		turn(rotspeed);
		if(myCenterX >width)
	    {     
	      myCenterX = 0;    
	    }    
	    else if (myCenterX<0)
	    {     
	      myCenterX = width;    
	    }    
	    if(myCenterY >height)
	    {    
	      myCenterY = 0;    
	    } 
	    else if (myCenterY < 0)
	    {     
	      myCenterY = height;    
	    }
	}

	// public void show(){

	// }

}