import java.util.Scanner;
public class Weather{
	public static void main(String[] args){
		System.out.println("Enter the temperature recording:");
		Scanner scan = new Scanner(System.in);
		int temperature = scan.nextInt();
		if (temperature >= 80 && temperature <= 100)
			System.out.println("It's hot.");
		else if (temperature >= 65 && temperature < 80)
			System.out.println("It's moderate.");
		else if (temperature >= 55 && temperature < 65)
			System.out.println("It's mild.");
		else if (temperature < 55 && temperature > 20)
			System.out.println("It's cold.");
		else 
			System.out.println("Extreme conditions. Be careful!");
	}
}