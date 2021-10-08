import java.util.Scanner;
public class Main{
	public static void main(String[] args){
		System.out.println("Enter the upper limit:");
		Scanner scan = new Scanner(System.in);
		int limits = scan.nextInt();
		System.out.println("------------------------");
		// iterative logic using PL's. 
		/*
		for (int i = limits; i >= 0; i--){
			System.out.println(i);
		}
		*/
		/*
		while(limits >= 0){ // condition is evaluated to be true or false 
				System.out.println(limits);
				limits--;

		}
		*/
		do{
			System.out.println(limits);
			limits--;
		} while (limits >= 0);
		System.out.println("------------------------");
		
	}
}