/*******************************************************************************
 * Copyright (c) 2013 Constantinos Constantinides.
 * 
 ******************************************************************************/
import java.util.*;

public class Queue {

	public ArrayList <String> collection;

	public Queue() {
		this.collection = new ArrayList<String>();
	}


	public void enqueue (String str) {
		collection.add(str);
	}


	public String dequeue () {
		String element = collection.remove(0);
		return element;
	}

	public boolean isEmpty () {
		return collection.isEmpty();
	}


	public int getSize () {
		return collection.size();
	}




}