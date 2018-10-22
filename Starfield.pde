//your code here
Particle [] stars;
public void setup()
{
	//your code here
	size(600,600);
	stars = new Particle[1000];

		for (int i = 2; i < stars.length; i++) {
			stars[0] = new OddballParticle();
			stars[1] = new JumboParticle();
			stars[i] = new NormalParticle();

		}
}
void draw()
{
	//your code here
	stars[0].move();
	stars[0].show();
	stars[1].move();
	stars[1].show();
	for (int i = 2; i < stars.length; i++) {
		stars[i].move();
		stars[i].show();
	}
}

void mousePressed()
{
	background(0);
	setup();
}

class NormalParticle implements Particle
{
	//your code here
	double x,y,angle,speed;
	int color1,color2,color3;
	NormalParticle()
	{
		x = 500;
		y = 500;
		angle = (double)(Math.random()*3.14*2);
		speed = (double)(Math.random()*5);
		color1 = (int)(Math.random()*256);
		color2 = (int)(Math.random()*256);
		color3 = (int)(Math.random()*256);
	}
	public void move()
	{
		x = x + (Math.cos(angle) * (int)speed);
		y = y + (Math.sin(angle) * (int)speed);
	}
	public void show()
	{
		fill(color1,color2,color3);
		noStroke();
		ellipse((float)x, (float)y, 10, 10);
	}

}
interface Particle
{
	//your code here
	public void show();
	public void move();
}
class OddballParticle implements Particle//uses an interface
{
	//your code here
	double x,y,angle,speed;
	int color1,color2,color3;
	OddballParticle()
	{
		x = 500;
		y = 500;
		angle = (double)(Math.random()*3.14*2);
		speed = (double)(Math.random()*10);
		color1 = (int)(Math.random()*256);
		color2 = (int)(Math.random()*256);
		color3 = (int)(Math.random()*256);
	}
	public void move()
	{

 		if (mouseX>x) {
 			x= x+1;
 		} else {
 			x= x-1;
 		}
 		if (mouseY>y) {
 			y= y+1;
 		} else {
 			y= y-1;
 		}
	}
	public void show()
	{
		fill(255);
		noStroke();
		ellipse((float)x, (float)y, 10, 10);
	}
}
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	double x,y,angle,speed;
	int color1,color2,color3;
	JumboParticle()
	{
		x = 500;
		y = 500;
		angle = (double)(Math.random()*3.14*2);
		speed = (double)(Math.random()*5);
		color1 = (int)(Math.random()*256);
		color2 = (int)(Math.random()*256);
		color3 = (int)(Math.random()*256);
	}
	public void move()
	{
		x = x + (Math.cos(angle) * (int)speed);
		y = y + (Math.sin(angle) * (int)speed);
	}
	public void show()
	{
		fill(color1,color2,color3);
		noStroke();
		rect((float)x-50, (float)y-50, 100, 100);
	}
}

