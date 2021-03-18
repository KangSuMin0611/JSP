package project0318;

public class Point {
	
	public int x;
	public int y;
	
	public Point(int a, int b) {
		this.x=a;
		this.y=b;
	}

	public int getX() {
		return x;
	}
	public int getY() {
		return y;
	}

	public void setX(int x) {
		this.x = x;
	}
	public void setY(int y) {
		this.y = y;
	}

	
	public Point() {
		this.x=0;
		this.y=0;
	}
	
}
