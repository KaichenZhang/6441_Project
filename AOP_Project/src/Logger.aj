import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

public aspect Logger {
	
	declare precedence: Logger, LifeSupport, Authorization;
		

		pointcut messages():
			call(* *.*(..))
			&& !within(Logger)
			&& !within(Test)
			&& !cflow(call (* java.*.*.*(..)));

		
		before(): messages() {
			try {
				Thread.sleep(10);
			} catch(InterruptedException e) {
				System.out.println("InterruptedException caught");
			}
			try {
				PrintWriter out = new PrintWriter(new FileWriter("system-logs.txt", true));
				out.println(
						// log the time (in millisecs)
						System.currentTimeMillis()%1000 + " : " +
						// get the caller
						thisJoinPoint.getThis().getClass().getName() + " : " +
						// get the receiver 
						thisJoinPoint.getTarget() + " : " +
						// get the message sent
						thisJoinPoint.getSignature().getName());
				out.close();
			} catch (IOException e) {}
		}
		
	
}
