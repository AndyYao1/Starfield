//your code here
NormalParticle [] stars;
public void setup()
{
	//your code here
	size(1000,1000);
	loop();
	stars = new NormalParticle[2000];
		for (int i = 0; i < stars.length; i++) {
			stars[i] = new NormalParticle();
		}
}
void draw()
{
	//your code here
	background(0);
	for (int i = 0; i < stars.length; i++) {
		stars[i].move();
		stars[i].show();
	}
}

void mousePressed()
{
	setup();
}

class NormalParticle
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
		x = x + (Math.cos(angle) * (int)speed);
		y = y + (Math.sin(angle) * (int)speed);
	}
	public void show()
	{
		fill(color1,color2,color3);
		ellipse((float)x, (float)y, 10, 10);
	}

}
interface Particle
{
	//your code here
	public void show();
	public void move();

}
class OddballParticle//uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

