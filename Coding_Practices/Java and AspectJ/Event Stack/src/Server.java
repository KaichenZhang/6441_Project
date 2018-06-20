import java.util.ArrayList;
import java.util.Date;


public class Server {
	String name;
	ArrayList<Client> clients = new ArrayList<Client>();
	Date date = new Date();
	
	public Server(String name) {
		this.name = name;
	}
	
	public void connect(Client client) {
		clients.add(client);
	}
	
    public String ping() {
    	return "PING " + toString() + " " + date.toString();
    }
	
	public String toString() {
		return this.name;
	}

}
