
public class Client {
	String name;
	Server server;
	public Client(String name, Server server) {
		this.name = name;
		this.server = server;
	}
	public void openConnection() {
		server.connect(this);
	}
}
