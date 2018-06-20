
public class Point {
 protected double x, y;
 static {
	 System.out.println(">static block: Point");
 }
 public Point(double x, double y) {
  this.x = x;
  this.y = y;
 }
 public Point() {
  this(0, 0);
 }
 void move(double x, double y) {
	 this.x = x;
	 this.y = y;
 }
 public String toString() {
  return "x: " + x + " " + "y: " + y;
 }
}
