class Animal{
	int code = 1;
	void talk(){
		System.out.println("Animals talk through the sounds they make!");
	}
}
class Dog extends Animal{ // extends connects a child class to parent class. 
	//int code = 2; //member variables new copy of that child class. 
	//int code = super.code; //member variables new copy of that child class. 
	String code = "2";
	//super.code = 10; // dog class can be benefited, cat class 
	//memmber variable override. 
	// shadow it but we can overwrite it. 
	@Override
	void talk(){ // member methods
		System.out.println("Dogs Bark!");
	}
	void legs(){
		System.out.println("Dogs have 4 legs!");	
	}
}
class TalkOTalk{
	public static void main(String[] args){
		//int x = 10; // stack primitive data type 
		Animal o1 = new Animal(); // instantiating, memory, user given data type
		o1.talk();  // instantiation reference data type
		System.out.println(o1.code);
		Dog o2 = new Dog();  // child object
		o2.talk();
		o2.legs();
		System.out.println(o2.code);
		
		
		Animal o3 = new Dog(); // upcasting
		o3.talk(); // animal talk method or is it dog talk method
		//((Dog)o3).legs(); // inside dog class // down casting 
		// explicitly downcast
		//((Dog)o1).legs(); // inside dog class // down casting //illegal 
		System.out.println(o3.code);

		
		
	}
}