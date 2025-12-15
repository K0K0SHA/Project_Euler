// filename: level_1.java
// by K0K0$H@ of GitHub
// last edit: 12/15/2025
// run on Linux: javac level_1.java && java level_1
// run on Windows: javac level_1.java ; java level_1
import java.util.*;

public class level_1{
        // class main
        public static void main(String[] args){
                System.out.println("Project Euler level 1 challenge: find the sum of all multiples of 3 and 5 under 1,000");

                // create empty set of ints to contain our multiples. Sets in Java can't have duplicates, so no need to worry about that
                // side note: since java.util.Set is abstract, it cannot be instantiated. So we will use HashSet implementation
                // side note 2: We cant make a Set of <int> because int is a primitive data type, and Java generics can't use primitive types like int, so we can use non-primitive Integer
                // java.util.Set <int> multiples = new HashSet<>(); // throws an error
                java.util.Set <Integer> multiples = new HashSet<>();

                // find multiples of 3 under 1,000
                int i = 3;
                        while ( i < 1000){
                                multiples.add(i);
                                i += 3;
                        }
                // find multiples of 5 under 1,000
                i = 5;
                        while (i < 1000){
                                multiples.add(i);
                                i += 5;
                        }

                // summate all members of the set
                int total = 0;
                for (Integer n : multiples){
                        total += n;
                }

                System.out.println("sum of multiples of 3 and 5 under 1,000: ");
                System.out.println(total);

                return 0;

        } // end public static void main
} // end class level_1
