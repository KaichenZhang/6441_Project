import java.util.*;
import java.text.*;

public aspect Filter {
	
	DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
	Date date;
	
	void around(Container c, String arg): call(* Container.add(String)) && target(c) && args(arg) {
		String newstr = arg.toLowerCase();
		proceed(c, newstr);
	  }
	
	void around(Container c, String arg): call(* Container.add(String)) && target(c) && args(arg) {
		date = new Date();
		String newstr = arg + " [" + date + "]";
		proceed(c, newstr);
	  }
	

  
} 