public class Evaluation{
	public static void main(String[] args){
		int i = 10;
		int a = 0, b = 0, c = 0, d = 0, e = 0;
		a = b = c = ++i; // value1: _____
		System.out.println(a + "\t" + b + "\t" + c + "\t" + i);
		i = a==b ?20:30; // value2: _____ 
		System.out.println(i + "\t" + a + "\t" + b);
		boolean res = !(10==20) && 5<3 || 2<1; //value3:____ 
		System.out.println(res);
		i = 0;
		d = (d=++i)+d; // value4:_____
		System.out.println(d);
		i = 0;
		e = e+(e=++i); 
		System.out.println(e);
		boolean res2 = !(20 <= 20) && ((5&3)>(3|5)) || 10 < 20; // value5:_____
		System.out.println(res2);

		
	}
}