public class StaticS2{
	public static int x, y;
	static void test1(){
		int x = 50; y = 60;
		test2();
	}
	static void test2(){
		System.out.println("x = " + x + ", y = " + y);	
	}
	public static void main(String[] args){
		x = 10; y = 20;
		test1();
		

	}

}