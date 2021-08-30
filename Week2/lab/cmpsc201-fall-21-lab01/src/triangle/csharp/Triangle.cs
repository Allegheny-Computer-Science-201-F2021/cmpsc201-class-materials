using System;
class Triangle {         
    static void Main(string[] args)
    {
        Console.Write("Enter the number of rows:");
        int rows = Convert.ToInt32(Console.ReadLine());
        for (int i =0; i < rows; i++){
            for (int j = 0; j <= i; j++){
                Console.Write("*\t");
            }
            Console.Write("\n");
        }
    }
}