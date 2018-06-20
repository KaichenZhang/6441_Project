
public class Test {

	public static void main(String[] args) {
		
		//Parent p = new Child() ;
		//System.out.println(((Friend)p).greet());

		
		//Parent p = new Child() ;
		//System.out.println(((Child)p).greet());

		//Parent p = new Parent() ;
		//System.out.println(((Child)p).greet());
		
		//Grandchild p = new Child() ;
		//System.out.println(((Child)p).greet());

		//Parent p = new Grandchild() ;
		//System.out.println(((Child)p).greet());
		
		Parent p = new Child() ;
		System.out.println(((Grandchild)p).greet());





	}

}
