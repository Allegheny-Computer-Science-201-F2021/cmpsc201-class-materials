import java.util.*; // package that we need to import to get scanner working
public class Exc {
   public static void main(String[] args) throws Exception 
   {
      Scanner in = new Scanner(System.in);
      int i = in.nextInt();
      int j = in.nextInt();
      System.out.println(f(i,j));
   }
   // exit in subroutine in a cleaner way. 
   public static int f(int x, int y) throws Exception {
    //try {
        return x/y;
    //} catch(Exception e) {
        //System.out.println(e);
        // log the error e in database:
      //  System.out.println("You can't divide a number by 0....");
        //return 0;
    //}
   }
}
