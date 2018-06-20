
public aspect ContractChecker {

  String around(Queue queue) : call (String Queue.dequeue()) && target(queue) {
    if ((invariant(queue) == false) || (queue.isEmpty()))
      return "Error: "  + thisJoinPoint;
    else
    	return proceed(queue);
  }
	  
  void around(BoundedQueue queue) : call (void BoundedQueue.enqueue(..)) && target(queue) {
	  if ((invariant(queue) == false) || (queue.isFull()))
	      System.out.println("Error: " + thisJoinPoint);
	    else
	    proceed(queue);
  }


	before (int arg): execution (BoundedQueue.new(int)) && args(arg) {
		if (arg <= 3) {
			System.out.println("Capacity: " + arg);
			System.out.println("Error: Invalid size.");
			System.exit(0);
		}
	}
	
	private boolean invariant(Queue queue) {
		return (queue.getSize() >= 0);
	}
	
	private boolean invariant(BoundedQueue queue) {
		return (queue.getSize() >= 0) && (queue.getSize() <= queue.getCapacity());
	}
}
