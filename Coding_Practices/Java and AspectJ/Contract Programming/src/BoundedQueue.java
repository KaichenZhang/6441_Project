public class BoundedQueue extends Queue {

	private int capacity;
	
	public BoundedQueue(int capacity) {
		this.capacity = capacity;
	}
	
	public boolean isFull () {
		return this.getSize() == this.getCapacity();
	}
	
	public int getCapacity() {
		return this.capacity;
	}
}
