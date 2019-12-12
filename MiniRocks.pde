class MiniRocks extends Asteroids{
	private int rotspeed;
	private double col;

	MiniRocks(double rx, double ry){
		rotspeed = (int)((Math.random()*12)-4);
		corners = (int)(Math.random()*4+4);
		xCorners = new int[corners];
		yCorners = new int[corners];

		for (int i=0;i<corners;i++){
			xCorners[i] = (int)((Math.random()*80)-40);
			yCorners[i] = -(int)((Math.random()*80)-40);
		}

		myCenterX=rx;
		myCenterY=ry;
		myDirectionX= Math.random()*10-5;
		myDirectionY= Math.random()*10-5;
		myPointDirection = Math.random()*360;

		col = (Math.random()*2)-1;
		if (col>0) myColor=(60);
		else myColor=(205);
	}

	public double getmyCenterX(){
		return myCenterX;
	}
	public double getmyCenterY(){
		return myCenterY;
	}


}