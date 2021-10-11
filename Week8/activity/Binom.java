public class Binom{
	public static int binom(int n, int k){
		if (k == 0 || k == n)
			return 1;
		else
			return binom(n-1,k-1) + binom(n-1,k);
	}
	public static void main(String[] args){
		System.out.println(binom(4,2));
	}
}