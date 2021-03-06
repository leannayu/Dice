int dieSize = 20;
int dotSize = dieSize/5;
void setup()
{
	size(800,600);
	noLoop();
}
void draw()
{
	background(255);
	int sum = 0;
	for (int y = 0; y < (height - dieSize); y += dieSize){
		for (int x=0; x < width; x += dieSize){
			Die theDie = new Die (x, y);
			theDie.roll();
			theDie.show();
			sum = sum + theDie.numRolled;
		}
	}
	text ("The sum rolled is: " + sum, width/2.5, height-(dieSize/2.5));
}
void mousePressed()
{
	redraw();

}
class Die //models one single dice cube
{
	int numRolled, myX, myY;
	Die(int x, int y) //constructor
	{
		roll();
		myX = x;
		myY = y;
	}
	void roll()
	{
		numRolled = (int)(Math.random()*5+1);
	}
	void show()
	{
		noStroke();
		int fillR = (int)(Math.random()*180+75);
		int fillG = (int)(Math.random()*180+75);
		int fillB = (int)(Math.random()*180+75);
		fill(fillR, fillG, fillB);
		rect(myX, myY, dieSize, dieSize);
		fill(0);
		if (numRolled == 1){
			ellipse (myX + dieSize/2, myY + dieSize/2, dotSize, dotSize);
		} else if (numRolled ==2){
			ellipse (myX + dieSize/4, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + 3*dieSize/4, myY + 3*dieSize/4, dotSize, dotSize);
		} else if (numRolled ==3){
			ellipse (myX + dieSize/4, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + dieSize/2, myY + dieSize/2, dotSize, dotSize);
			ellipse (myX + 3*dieSize/4, myY + 3*dieSize/4, dotSize, dotSize);
		} else if (numRolled == 4){
			ellipse (myX + dieSize/4, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + dieSize/4, myY + 3*dieSize/4, dotSize, dotSize);
			ellipse (myX + 3*dieSize/4, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + 3*dieSize/4, myY + 3*dieSize/4, dotSize, dotSize);
		} else if (numRolled == 5){
			ellipse (myX + dieSize/4, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + dieSize/4, myY + 3*dieSize/4, dotSize, dotSize);
			ellipse (myX + 3*dieSize/4, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + 3*dieSize/4, myY + 3*dieSize/4, dotSize, dotSize);
			ellipse (myX + dieSize/2, myY + dieSize/2, dotSize, dotSize);
		} else if (numRolled == 6){
			ellipse (myX + dieSize/4, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + dieSize/4, myY + 3*dieSize/4, dotSize, dotSize);
			ellipse (myX + 3*dieSize/4, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + 3*dieSize/4, myY + 3*dieSize/4, dotSize, dotSize);
			ellipse (myX + dieSize/2, myY + dieSize/4, dotSize, dotSize);
			ellipse (myX + dieSize/2, myY + 3*dieSize/4, dotSize, dotSize);
		}
	}
}
