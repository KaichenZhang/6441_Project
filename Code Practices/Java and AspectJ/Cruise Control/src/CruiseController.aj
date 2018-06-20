
public privileged aspect CruiseController {
	private double speedLimit = 100.0;

	pointcut accelMonitor (Vehicle v, double speedInc): execution(* Vehicle.accelerate(..)) && 
	this(v) && 
	args(speedInc);

	void around (Vehicle v, double speedIncrement): accelMonitor (v, speedIncrement) {
		System.out.println("About to increase by: " + speedIncrement + " km/h.");
		if ((v.speed + speedIncrement) <= speedLimit)
			proceed(v, speedIncrement);
		else
			System.out.println("Error: Cannot exceed 100 km/h.");
	}
}
