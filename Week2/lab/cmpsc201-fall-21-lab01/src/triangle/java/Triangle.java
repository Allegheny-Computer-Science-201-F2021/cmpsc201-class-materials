import java.util.Scanner;
public class Triangle{
	public static void main(String[] args){
		System.out.print("Enter the number of rows:");
		Scanner scan = new Scanner(System.in);
		int rows = scan.nextInt();
		for (int i =0; i < rows; i++){
			for (int j = 0; j <= i; j++){
				System.out.print("*\t");
			}
			System.out.println();
		}
		
	}
}