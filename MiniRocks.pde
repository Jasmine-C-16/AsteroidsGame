class MiniRocks extends Asteroids{
	private int rotspeed;
	private double col;

	MiniRocks(double rx, double ry){
		rotspeed = (int)((Math.random()*12)-4);
		corners = (int)(Math.random()*4+4);
		xCorners = new int[corners];
		yCorners = new int[corners];

		for (int i=0;i<corners;i++){
			xCorners[i] = (int)((Math.random()*50)-40);
			yCorners[i] = -(int)((Math.random()*50)-40);
		}

		myCenterX=rx;
		myCenterY=ry;
		myDirectionX= Math.random()*8-4;
		myDirectionY= Math.random()*8-4;
		myPointDirection = Math.random()*360;

		col = (Math.random()*2)-1;
		if (col>0) myColor=(80);
		else myColor=(205);
	}

	// public void move(){
	// 	myCenterX+=myDirectionX;
	// 	myCenterY+=myDirectionY;
	// 	turn(rotspeed);

	// 	if(myCenterX >width){     
	//       myCenterX = 0;    
	//     }    
	//     else if (myCenterX<0){     
	//       myCenterX = width;    
	//     }    

	//     if(myCenterY >height){    
	//       myCenterY = 0;    
	//     } 
	//     else if (myCenterY<0){     
	//       myCenterY = height;    
	//     }
	// }

	// public void show(){

	// }

	public double getmyCenterX(){
		return myCenterX;
	}
	public double getmyCenterY(){
		return myCenterY;
	}


}