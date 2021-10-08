public class Main{
	public static void main(String[] args){
		int i = 10, j = 0, k = 0;
		if(i > 10 || 5/j < 3) // short circuit evaluation
			k = 5;		
		System.out.println("k is: " + k);
	}
}