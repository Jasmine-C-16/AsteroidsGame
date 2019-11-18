class Asteroids extends Floater{
	private int rotspeed;
	Asteroids(){
		rotspeed = (int)(Math.random()*20)-10;
		corners = (int)Math.random()*7+1;
		xCorners = new int[corners];
		yCorners = new int[corners];

		for (int i=0;i<corners;i++){
			xCorners[i] = (int)(Math.random()*7)-7;
			yCorners[i] = (int)(Math.random()*7)-7;
		}

	}

	public void move(){
		turn(rotspeed);
	}

	public void show(){

	}

}