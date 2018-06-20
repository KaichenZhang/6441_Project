
public class Test {
	public static void main(String[] args) {
		/*
		Queue queue = new Queue();						
		queue.enqueue("All");
		queue.enqueue("your");
		queue.enqueue("base");	
		System.out.println(queue.dequeue());
		System.out.println(queue.dequeue());
		System.out.println(queue.dequeue());
		System.out.println(queue.dequeue());
		*/
		

		BoundedQueue queue = new BoundedQueue(2);						
		queue.enqueue("All");
		queue.enqueue("your");
		queue.enqueue("base");	
		System.out.println(queue.dequeue());
		System.out.println(queue.dequeue());
		System.out.println(queue.dequeue());
		System.out.println(queue.dequeue());

		
		
		
		
	}
	
}