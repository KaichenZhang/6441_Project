public privileged aspect Authorization {
	
	
	/*
	 *  Intercept and disallow any request by a crew member to obtain mission purpose.
	 */
	
	pointcut mission (Crew crew, OnBoardComputer computer):
		call(String OnBoardComputer.getMissionPurpose()) && 
		this(crew) && 
		target(computer);

	String around (Crew crew, OnBoardComputer computer): mission (crew, computer) {
		return computer.toString() + " cannot disclose that information " + crew.toString() + ".";
	}
	
	
	/*
	 *  Intercept and block any request by a crew member to shut down on-board computer.
	 *  Should attempts persist, then kill crew member on 3rd attempt.
	 */
	
	pointcut disconnect (Crew crew):
		call(void OnBoardComputer.shutDown()) && 
		this(crew);
	
	private int Crew.numOfTries = 0;
	
	void around (Crew crew): disconnect (crew) {
		if (crew.numOfTries == 0)
				System.out.println("Can't do that " + crew.toString() + ".");
		else if (crew.numOfTries == 1)
		    	System.out.println("Can't do that " + crew.toString() + " and do not ask me again.");
		else {
		    	crew.kill();
				System.out.println("You are being retired " + crew.toString() + ".");
		    }
		crew.numOfTries++;
	}
	

}
