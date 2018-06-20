// C. Constantinides, 2009.

public class InterfaceTest {

	public static void main(String[] args) {
		
	Counter c1 = new LockableCounter();
	LockableCounter c2 = new LockableCounter();
	LockIF c3 = new LockableCounter();
	
	c1.click();
	System.out.println(c1.getValue());
	System.out.println(c1.description);
	
	c2.click();
	System.out.println(c2.getValue());
	c2.unlock();
	System.out.println(c2.isLocked());
	System.out.println(c2.description);

	
	//c3.click();
	c3.unlock();
	System.out.println(c3.isLocked());
	//System.out.println(c3.description);
	}
	
}
