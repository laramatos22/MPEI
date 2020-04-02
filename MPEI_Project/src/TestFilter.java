 import java.util.*;
 public class TestFilter{
    static String[]randomTest = new String[10];
    public static void main(String[] args){
        Scanner sc = new Scanner(System.in);
        String[] words = {"Alex", "Joana", "Tiago", "Ricardo", "Quim", "Antonio", "Helder", "Daniel"
						  ,"Andre", "Raquel", "Carlos"};
		
        BloomFilter filter = new BloomFilter(words.length);
        for(String w : words)
			System.out.println(filter.isMember(w));
        System.out.println();
        

        System.out.println("Check Array words before insert: Should be False");
        for(String w : words)
            filter.insert(w);
        System.out.println("________________________________________________");        

        System.out.println("Bloom Filter");
        System.out.println();
        for(boolean b : filter.filter())
            System.out.println(b);
        System.out.println("________________________________________________");
        
        System.out.println("Check Array words after insert: Should be True");
        System.out.println();
        for(String w : words)
            System.out.println(filter.isMember(w));
        System.out.println("________________________________________________");
            
        System.out.println("Random words: Should be False");
        System.out.println();
        System.out.println(filter.isMember("basdbbd sfsdf"));
        System.out.println(filter.isMember("asddasd"));
        System.out.println(filter.isMember("FAlse"));
        System.out.println(filter.isMember("Joao"));
        System.out.println("________________________________________________");

        System.out.println("Random Test:");
        System.out.print("Numero de Strings: ");
        int index = sc.nextInt();
        randomTest = new String[index]; 
        filter = new BloomFilter(words.length*4);
        System.out.println("____________________________");
        System.out.println("Filter");
        for(int i=0 ; i<randomTest.length ; i++){
            randomTest[i]=randomString(5);
            filter.insert(randomTest[i]);
            System.out.println(randomTest[i]);
        }
        System.out.println("____________________________");
        System.out.println("Tests");    
        for(int i=0 ; i<randomTest.length ; i++){
            String str = randomString(5);
            System.out.print("Test ["+str+"]: ");
            System.out.println(filter.isMember(str));
        }


    }
    
    public static String randomString(int n){
        String str = "qwertyuioplkjhgfdsazxcvbnm";
        StringBuilder sb = new StringBuilder(n);
        for (int i = 0; i < n; i++) { 
            int index = (int)(str.length() 
                        * Math.random()); 
            sb.append(str.charAt(index)); 
        } 
        return sb.toString(); 
    }


}