ArrayList balls = new ArrayList();

// Runs on initial load
void setup()
{
    size(500, 500);
    background(100);  
}

// Runs repeatedly until exit() is called.
void draw()
{ 
  background(100);
  if (balls.size() > 0) {
  	for (int i = 0; i < balls.size(); i++) {
  		balls.get(i).update();
  		balls.get(i).draw();
  	}
  }
}

// Runs when mouse is clicked.
void mouseClicked() {
	Ball b = new Ball(mouseX, mouseY);
	balls.add(b);
}

// Class and constructor for the ball.
class Ball {
	int x, y;
	int yV;
	int gravity;

	Ball(int initX, int initY) {
		x = initX;
		y = initY;
		yV = 1;
		gravity = 1;
	}

	void update() {
		yV += gravity;
		y += yV;
		if (y > 480) {
			yV = -20;
		}
	}

	void draw() {
		ellipse(x, y, 20, 20);
	}
}