
public class StaticBlockTest {
		static int a = 2;
		static int b;
		static void method (int x) {
			System.out.println("Static method: x = " + x);
		}
		static {
			System.out.println("Static block.");
			b = a * 3;
			System.out.println(b);
		}
		public static void main (String[] args) {
		  method(13);
		}
}