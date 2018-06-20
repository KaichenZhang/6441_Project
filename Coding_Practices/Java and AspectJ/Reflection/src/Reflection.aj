
public aspect Reflection {


	before(): call(* Server.connect(..)) {
		System.out.println("thisJoinPoint " + thisJoinPoint);
		
		System.out.println("thisJoinPoint.getKind() " + thisJoinPoint.getKind());
		System.out.println("thisJoinPoint.toString() " + thisJoinPoint.toString());
		System.out.println("thisJoinPoint.toShortString() " + thisJoinPoint.toShortString());
		System.out.println("thisJoinPoint.toLongString() " + thisJoinPoint.toLongString());
		System.out.println("thisJoinPoint.getArgs() " + thisJoinPoint.getArgs());
		System.out.println("thisJoinPoint.hashCode() " + thisJoinPoint.hashCode());
		System.out.println("thisJoinPoint.getSourceLocation() " + thisJoinPoint.getSourceLocation());
		System.out.println("thisJoinPoint.getStaticPart() " + thisJoinPoint.getStaticPart());
		
		System.out.println("\n");
		
		System.out.println("thisJoinPoint.getSignature() " + thisJoinPoint.getSignature());
		System.out.println("thisJoinPoint.getSignature().getName() " + thisJoinPoint.getSignature().getName());
		System.out.println("thisJoinPoint.getSignature().getDeclaringTypeName() " + thisJoinPoint.getSignature().getDeclaringTypeName());
		System.out.println("thisJoinPoint.getSignature().getClass() " + thisJoinPoint.getSignature().getClass());
		System.out.println("thisJoinPoint.getSignature().toLongString() " + thisJoinPoint.getSignature().toLongString());
		System.out.println("thisJoinPoint.getSignature().toShortString() " + thisJoinPoint.getSignature().toShortString());
		System.out.println("thisJoinPoint.getSignature().hashCode() " + thisJoinPoint.getSignature().hashCode());
		
		System.out.println("\n");
		
		System.out.println("thisJoinPoint.getThis() " + thisJoinPoint.getThis());
		System.out.println("thisJoinPoint.getThis().hashCode() " + thisJoinPoint.getThis().hashCode());
		System.out.println("thisJoinPoint.getThis().toString() " + thisJoinPoint.getThis().toString());
		System.out.println("thisJoinPoint.getThis().getClass() " + thisJoinPoint.getThis().getClass());
		System.out.println("thisJoinPoint.getThis().getClass().getName() " + thisJoinPoint.getThis().getClass().getName());
		
		System.out.println("\n");
		
		System.out.println("thisJoinPoint.getTarget() " + thisJoinPoint.getTarget());
		System.out.println("thisJoinPoint.getTarget().hashCode() " + thisJoinPoint.getTarget().hashCode());
		System.out.println("thisJoinPoint.getTarget().toString() " + thisJoinPoint.getTarget().toString());
		System.out.println("thisJoinPoint.getTarget().getClass() " + thisJoinPoint.getTarget().getClass());
		System.out.println("thisJoinPoint.getTarget().getClass().getName() " + thisJoinPoint.getTarget().getClass().getName());
		
	}
	
	
}
