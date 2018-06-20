import java.util.*;

public class DataSource {

		private Map<Integer, String> map = new HashMap<Integer, String>();
	
		public void insert(int key, String element) {
			map.put(key, element);
		}

		public String get(int key) {
			return map.get(key);
		}

	}
