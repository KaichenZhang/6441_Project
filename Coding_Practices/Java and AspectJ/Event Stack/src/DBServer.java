public class DBServer extends Server {

	Gateway gateway;

	public DBServer(String name, Gateway gateway) {
		super(name);
		this.gateway = gateway;
	}
	
    public void save(int key, String element) {
        gateway.save(key,  element);
    }
    
    public String find(int key) {
        return gateway.find(key);
    } 
    
}
