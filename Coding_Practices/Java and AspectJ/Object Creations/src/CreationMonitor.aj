public aspect CreationMonitor {

	pointcut instantiations(Object o):
				(initialization(*.new(..))) &&
				!within(CreationMonitor) &&
				!cflow(execution (* java.*.*.*(..))) &&
				this(o);
		
		after (Object o) returning: instantiations(o) {
			System.out.println(
					 o.hashCode() + ", " +
					 "'"+ o.getClass().getName() + "', " +
					 "'" + thisJoinPoint.getSignature().toShortString());
		}


}