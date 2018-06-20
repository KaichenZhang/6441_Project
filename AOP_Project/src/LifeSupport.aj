
public privileged aspect LifeSupport {

	/*
	 *  Introduce features into class Crew.
	 */
	private boolean Crew.life = true;
	
	private void Crew.kill() {
		this.life = false;
	}
	
	boolean Crew.getLifeStatus(){
		return this.life;
	}
	
	
	
	/*
	 *  Intercept all messages sent to the on-board computer by a crew member and 
	 *  ignore messages from "killed" crew members.
	 */

	pointcut actions (Crew crew, OnBoardComputer system):
		call(* OnBoardComputer.*()) && 
		this(crew) &&
		target(system);	
	
	
	Object around (Crew crew, OnBoardComputer system): actions (crew, system) {
		if (crew.getLifeStatus()) {
			return proceed(crew, system);
		}
		else
			return null;
	}
	
	
}

