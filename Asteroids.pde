class Asteroids extends Floater{
	private int rotspeed;
	private double col;

	Asteroids(){
		rotspeed = (int)((Math.random()*8)-4);
		corners = (int)(Math.random()*8+4);
		xCorners = new int[corners];
		yCorners = new int[corners];

		for (int i=0;i<corners;i++){
			xCorners[i] = (int)((Math.random()*80)-40);
			yCorners[i] = -(int)((Math.random()*80)-40);
		}

		myCenterX=0;
		myCenterY=0;
		myDirectionX= Math.random()*10-5;
		myDirectionY= Math.random()*10-5;
		myPointDirection = Math.random()*360;

		col = (Math.random()*2)-1;
		if (col>0) myColor=(60);
		else myColor=(205);
	}

	public void move(){
		myCenterX+=myDirectionX;
		myCenterY+=myDirectionY;
		turn(rotspeed);

		if(myCenterX >width){     
	      myCenterX = 0;    
	    }    
	    else if (myCenterX<0){     
	      myCenterX = width;    
	    }    

	    if(myCenterY >height){    
	      myCenterY = 0;    
	    } 
	    else if (myCenterY<0){     
	      myCenterY = height;    
	    }
	}

	public double getmyCenterX(){
		return myCenterX;
	}

	public double getmyCenterY(){
		return myCenterY;
	}

}