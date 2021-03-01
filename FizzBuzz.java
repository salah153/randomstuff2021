public class FizzBuzz {
    public static void main(String[] args) {
        int a1 = Integer.parseInt(args[0]);
        int a2 = Integer.parseInt(args[1]);
        for (int i = 1; i <= 100; i++) {
            if (i % a1 == 0 && i % a2 == 0) {
                System.out.println("FizzBuzz");
            } else if (i % a1 == 0) {
                System.out.println("Fizz");
            } else if (i % a2 == 0) {
                System.out.println("Buzz");
            } else {
                System.out.println(i);
            }
        }
    }
}
// this is a test