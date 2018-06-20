
public class ColoredPoint extends Point {

	public String color;

	ColoredPoint () {
		super();
		this.color = "Black";
	}
	
	ColoredPoint (float x, float y, String color) {
		super(x, y);
		this.color = color;
	}
	
	public String toString() {
		return "(" + this.x + ", " + this.y + ") : " + this.color;
	}
	
	
}
