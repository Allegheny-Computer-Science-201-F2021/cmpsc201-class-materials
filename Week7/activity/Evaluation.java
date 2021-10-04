public class Evaluation{
	public static void main(String[] args){
		int i = 10;
		int a = 0, b = 0, c = 0, d = 0, e = 0;
		a = b = c = ++i; // value1: _____
		i = a==b ?20:30; // value2: _____ 
		boolean res = !(10==20) && 5<3 || 2<1; //value3:____ 
		i = 0;
		d = (d=++i)+d; // value4:_____
		i = 0;
		e = e+(e=++i); // value5:_____
		
	}
}