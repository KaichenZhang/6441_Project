
public privileged aspect Logger {
  
  pointcut monitor (Vehicle v): execution (* Vehicle.accelerate(..)) && this(v);
  
  after(Vehicle v): monitor(v) {
    System.out.println("Current speed: " + v.speed + " km/h.");
  }

}