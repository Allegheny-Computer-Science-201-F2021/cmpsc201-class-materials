class Box{
	int x;
	int y;  // two member variables
	Box(int a, int b){
		this.x = a;
		this.y = b;
	} // constructor, speacial member methods instantiate you create an object 
}
public class Main{
	public static void swap(Box b){ // formal parameter is not equal to actual parameter
		// formal parameter is equal to actual parameter, same copy pass by reference
		int temp = b.x;
		b.x = b.y;
		b.y = temp;  // temp?
	}
	public static void main(String[] args){
		int x = 10;
		int y = 20;
		Box b1 = new Box(x, y);
		/*
		b1.x = x;
		b1.y = y;
		*/
		System.out.println(b1.x + "\t" + b1.y);
		swap(b1);  // pass by reference
		System.out.println(b1.x + "\t" + b1.y);

	}
}