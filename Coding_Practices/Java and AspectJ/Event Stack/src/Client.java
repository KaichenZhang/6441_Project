
public class Client {
	
	String name;
	DBServer server;
	
	public Client(String name, DBServer server) {
		this.name = name;
		this.server = server;
	}
	
	public void openConnection() {
		this.server.connect(this);
		System.out.println(this.server.ping());
	}
	
	public void save (int key, String element) {
        server.save(key,  element);
    }
	
    public String find(int key) {
        return server.find(key);
    }
    
	public String toString() {
		return this.name;
	}
	
	
}
