
public class Test {
	public static void main(String[] args) {

		DataSource database = new DataSource();
		Gateway gateway = new Gateway(database);
		DBServer server = new DBServer("server", gateway);

		Client jack = new Client("Jack", server);
		Client jill = new Client("Jill", server);


		jack.openConnection();
		jack.save(6, "ACK (acknowledge)");
		
		jill.openConnection();
		System.out.println(jack.find(6));


	}

}
