
public aspect Initializer {

		after(): staticinitialization(*) && !within(Initializer) && !within(Test) {
			System.out.println("Initialized: " + thisJoinPoint);
		}


	
}
