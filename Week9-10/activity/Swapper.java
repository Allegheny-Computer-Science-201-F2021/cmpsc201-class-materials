class Box{
	int x;
	int y;
	Box(int a, int b){
		this.x = a;
		this.y = b;
	}
}
public class Swapper{
	public static void swap(int x, int y){
		int temp = x;
		x = y;
		y = temp;
	}
	public static void main(String[] args){
		int x = 10;
		int y = 20;
		System.out.println(x + "\t" + y);
		swap(x, y);
		System.out.println(x + "\t" + y);

	}
}