//your code here
Particle [] stars;
public void setup()
{
	//your code here
	size(1000,1000);
	loop();
	stars = new Particle[1000];

		for (int i = 2; i < stars.length; i++) {
			stars[0] = new OddballParticle();
			stars[i] = new NormalParticle();
		}
}
void draw()
{
	//your code here
	background(0);
	stars[0].move();
	stars[0].show();
	for (int i = 2; i < stars.length; i++) {
		stars[i].move();
		stars[i].show();
	}
}

void mousePressed()
{
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
		speed = (double)(Math.random()*10);
		color1 = (int)(Math.random()*256);
		color2 = (int)(Math.random()*256);
		color3 = (int)(Math.random()*256);
	}
	public void move()
	{
		x = x + (Math.cos(angle) * speed);
		y = y + (Math.sin(angle) * speed);
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
		x = x+(int)(Math.random()*10)-10;
		y = y;
	}
	public void show()
	{
		fill(color1,color2,color3);
		noStroke();
		ellipse((float)x, (float)y, 10, 10);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

