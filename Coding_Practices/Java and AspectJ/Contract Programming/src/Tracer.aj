public privileged aspect Tracer {
	
	public boolean Server.isClient(Client client) {
		return this.clients.contains(client);
	}
	
	pointcut connection (Client client, Server server):
		execution(* Server.*tach(Client)) &&
		this(server) && 
		args(client);
		
	after (Client client, Server server): connection (client, server) {
		System.out.println(client.toString() + " is connected: " + server.isClient(client) + ".");
	}
}
