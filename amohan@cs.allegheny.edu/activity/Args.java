public class Args{
	public static void f(int alpha, int beta, int gamma){
		System.out.println(alpha + "\t" + beta + "\t" + gamma);
	}
	public static void main(String[] args){
		int x = 4;
		f(3*x+1, x = 1, 2*x);
	}
}