
public abstract aspect AbstractLogger {
	abstract pointcut monitored();

	before(): monitored() {
		System.out.println(">Entering: " + thisJoinPoint);
	}

	after(): monitored() {
		System.out.println(">Exiting: " + thisJoinPoint);
	}
}
