import java.util.ArrayList;
public class Container {
	private ArrayList <String> elements = new ArrayList<String> ();
	private int capacity;

	public Container(int capacity) {
		this.capacity = capacity;
	}

	public void add(String str) {
		this.elements.add(str);
	}

	public String remove(int position) {
		return this.elements.remove(position);
	}
	public void clear() {
		this.elements.clear();
	}

}
