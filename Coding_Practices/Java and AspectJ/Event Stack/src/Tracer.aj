import java.util.*;

public aspect Tracer {
	
	Stack<String> eventStack = new Stack<String>();
	
	// Captures events that should be excluded	
	pointcut exceptions() :
		!within(Tracer);
	

	// Captures all join points within DBServer
	pointcut events() :
		cflow(withincode (* DBServer.save(..))) &&
		exceptions();
	
	before(): events()  {
		eventStack.push((eventStack.size() + 1) + "\t" + thisJoinPoint);
	}
	
	after(): execution(* Test.main(..)) {
		System.out.println("\nEvent stack:\n");
		int max = eventStack.size();
		for (int i = 0; i < max; i++)
			System.out.println(eventStack.pop());
	}
}
