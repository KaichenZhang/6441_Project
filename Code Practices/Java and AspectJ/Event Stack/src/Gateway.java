
public class Gateway {

	DataSource database;
	
	public Gateway (DataSource database) {
		this.database = database;
	}
	
    public void save(int key, String element) {
        database.insert(key,  element);
    }
    
    public String find(int key) {
        return database.get(key);
    }

}
