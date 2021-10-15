class Animal{
	void talk(){
		System.out.println("Animals talk through the sounds they make!");
	}
}
class Dog extends Animal{
	@Override
	void talk(){
		System.out.println("Dogs Bark!");
	}
	void legs(){
		System.out.println("Dogs have 4 legs!");	
	}
}
class TalkOTalk{
	public static void main(String[] args){
		Animal o1 = new Animal();
		o1.talk();
		
		Dog o2 = new Dog();
		o2.talk();
		o2.legs();
		
		Animal o3 = new Dog(); // upcasting
		o3.talk();
		
		
	}
}