public aspect Logger {

	
	// Logs all calls to DBServer
	pointcut calls():
		(call(* Server.*(..)));

	// Logs all executions within DBServer or Server
	pointcut executions():
		execution(* DBServer.*(..)) || 
		execution(* Server.*(..));
	
	before(): calls() || executions() {
		System.out.println(thisJoinPoint);
	}

	
	
}