import java.util.*;

public privileged aspect Trackback {
	
	Date Server.date = Calendar.getInstance().getTime();
	
	public String Client.pingServer(Server server) { 
		return this.server.ping();
	}
	
	public String Server.ping() {
		if (this.isActive())
			return "PING " + this.toString() + " " + this.date + ".";
		else 
			return null;
	}
	
	pointcut pings (Client client, Server server):
		call(String Server.ping()) &&
		this(client) && 
		target(server);

	before (Client client, Server server): pings (client, server) {
		System.out.println("ping: " + client.toString() + " -> " + server.toString() + ".");
	}
	
	
}









