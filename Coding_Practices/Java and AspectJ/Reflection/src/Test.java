
public class Test {


	public static void main(String[] args) {
		Server host = new Server("host");
		Client client = new Client("client", host);
		client.openConnection();
		

	}

}
