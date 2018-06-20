
public aspect ConcreteLogger extends AbstractLogger {
	pointcut monitored(): execution(void Stack.push(String)) || execution(String Stack.pop());
	  
}
