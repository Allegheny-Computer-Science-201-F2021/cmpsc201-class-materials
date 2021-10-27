import java.util.*;

public class Exc {
   public static void main(String[] args) //throws Exception 
   {
      Scanner in = new Scanner(System.in);
      int i = in.nextInt();
      int j = in.nextInt();
      System.out.println(f(i,j));
   }

   public static int f(int x, int y) //throws Exception 
   {
//      try {
        return x/y;
//      } catch(Exception e) {
//        System.out.println(e);
//        return 0;
//      }
   }
}
