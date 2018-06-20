// C. Constantinides, 2009.

public class PointTest {
 public static void main(String[] args) {
  Point p1 = new Point();
  Point p2 = new Point (1, 1);
  Point3D p3 = new Point3D();
  Point3D p4 = new Point3D(1, 1, 2);
  Point p5 = new Point3D();
  System.out.println(p1.toString());
  System.out.println(p2.toString());
  System.out.println(p3.toString());
  System.out.println(p4.toString());
  System.out.println(p5.toString());
  System.out.println(p3.description);
  System.out.println(p5.description);
  }
  
}

