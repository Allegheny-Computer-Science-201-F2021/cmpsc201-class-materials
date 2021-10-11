import java.util.Stack;
import java.util.Arrays;
public class SBinom{
    public static int binom(int n, int k) {
        int res = 0;
        Stack<Integer> stack = new Stack<>(); // single stack for both input variables        
        stack.push(n); // push original input
        stack.push(k);
        do {
            int b = stack.pop(); // b = k and a = n
            int a = stack.pop();
            if (b > 0 && b != a){
                stack.push(a-1);
                stack.push(b);
                stack.push(a-1); 
                stack.push(b-1);
                
            } 
            else {
                res += 1;
            }
            //System.out.println(Arrays.toString(stack.toArray()));
            
            
        } while (!stack.empty());
        return res;
        
    }   
    public static void main(String[] args){
        for(int i = 0; i < 6; i++){
            for(int j = 0; j <= i; j++){
                System.out.print(binom(i,j) + "\t");
            }
            System.out.println();
        }
        
    }

}


