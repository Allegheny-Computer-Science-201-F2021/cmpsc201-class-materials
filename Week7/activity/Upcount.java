import java.util.Scanner;
public class Downcount{
	public static void main(String[] args){
		System.out.println("Enter the upper limit:");
		Scanner scan = new Scanner(System.in);
		int limits = scan.nextInt();
		System.out.println("------------------------");
		for (int i = limits; i >= 0; i--){
			System.out.println(i);
		}
		System.out.println("------------------------");
		
	}
}