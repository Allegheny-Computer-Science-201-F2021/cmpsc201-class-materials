import java.io.BufferedReader;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
public class FReader {
    public static void main(String[] args) {
        int sum = 0;
        try (BufferedReader br = Files.newBufferedReader(Paths.get("data.txt"))) {
            // read line by line
            String line;
            while ((line = br.readLine()) != null) {
                sum += Integer.parseInt(line);
            }
        } catch (IOException e) {
            System.err.format("IOException: %s%n", e);
        }
        System.out.println("Sum:" + sum);
    }
}