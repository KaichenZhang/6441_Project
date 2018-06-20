
public class Coordinate extends Point {
    public static final String name = "NAME";

    static {
    	System.out.println(">Inside static block: Coordinate");
        describe();
    }

    public Coordinate() {
        System.out.println("Inside default constructor of Coordinate");
    }

    public static void describe() {
        System.out.println(">Inside static void describe()");
    }


}