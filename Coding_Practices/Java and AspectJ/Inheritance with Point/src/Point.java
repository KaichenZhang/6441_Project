// C. Constantinides, 2009.

public class Point {
 protected double x, y;
 public final String description = "Class Point";
 public Point(double x, double y) {
  this.x = x;
  this.y = y;
 }
 public Point() {
  this(0, 0);
 }
 public String toString() {
  return "x: " + x + " " + "y: " + y;
 }
}
