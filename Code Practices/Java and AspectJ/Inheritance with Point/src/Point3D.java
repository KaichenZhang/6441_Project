// C. Constantinides, 2009.

public class Point3D extends Point {
 private double z;
 public final String description = "Class Point3D";
 public Point3D (double x, double y, double z) {
 super (x, y);
  this.z = z;
 }
 public Point3D() {
  this.z = 0;
 }
 public String toString() {
  return "x: " + x + " " + "y: " + y + " " + "z: " + z;
 }
}

