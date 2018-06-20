import java.util.ArrayList;
public class Server {
	private String name;
	private ArrayList<Client> clients = new ArrayList<Client>();
	public Server(String name) {
		this.name = name;
	}
	public void connect(Client client) {
		clients.add(client);
	}
}
