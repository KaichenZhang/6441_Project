public class Vehicle {
  private double speed;
  public void accelerate(double speedIncrement) {
    this.speed = this.speed + speedIncrement;
  }
  public void decelerate(double speedDecrement){
    this.speed = this.speed - speedDecrement;
  }
}
