public class StaticS1{
	public static int x, y;
	static void test(){
		int x = 50; y = 60;
		System.out.println("x = " + x + ", y = " + y);	
	}
	public static void main(String[] args){
		x = 10; y = 20;
		test();
		{
			int x = 70; y = 80;
			System.out.println("x = " + x + ", y = " + y);	
		}
		System.out.println("x = " + x + ", y = " + y);	

	}

}