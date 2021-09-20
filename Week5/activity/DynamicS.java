public class DynamicS{
	int x, y;
	void start(){
		x = 10; y = 20;
		test1();
		test2();
	}
	void test1(){
		x = 50;  y = 60;
		test2();
	}
	void test2(){
		System.out.println("x = " + x + ", y = " + y);
	}
	public static void main(String[] args){
		DynamicS obj1 = new DynamicS();
		obj1.start();
		System.out.println("static x = " + obj1.x + ", static y = " + obj1.y);
		DynamicS obj2 = new DynamicS();
		//obj2.start();
		System.out.println("static x = " + obj2.x + ", static y = " + obj2.y);

	}

}