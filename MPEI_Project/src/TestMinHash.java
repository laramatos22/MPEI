import java.util.*;
public class TestMinHash{
    public static void main(String args[]){

        System.out.println("        MinHash Tests ");
        System.out.println("________________________________");
        int nhf = 50;
        MinHash minhash = new MinHash(nhf);

        String str1 = "Portugal";
        String str2 = "Franca";
        String str3 = "Portugal";
        String str4 = "Porto";
        String str5 = "Frankfurt";

        Set<String> set1 = Shingle.getShingles(str1,1);
        Set<String> set2 = Shingle.getShingles(str2,1);
        Set<String> set3 = Shingle.getShingles(str3,1);
        Set<String> set4 = Shingle.getShingles(str4,1);
        Set<String> set5 = Shingle.getShingles(str5,1);

        System.out.println();
        System.out.println("Jaccard Similarity 1/2: "+minhash.jaccardSimilarity(set1, set2));
        System.out.println("Jaccard Similarity 1/3: "+minhash.jaccardSimilarity(set1, set3));
        System.out.println("Jaccard Similarity 1/4: "+minhash.jaccardSimilarity(set1, set4));
        System.out.println("Jaccard Similarity 1/5: "+minhash.jaccardSimilarity(set1, set4));
        System.out.println("Jaccard Similarity 4/5: "+minhash.jaccardSimilarity(set4, set5));
        System.out.println("Jaccard Similarity 2/5: "+minhash.jaccardSimilarity(set2, set5));
        System.out.println("________________________________");
        System.out.println();
        System.out.println("        Random Strings");
        
        int N = 500000;
        double thresHold = 0.15;
        String str = randomString(7); 
        int valid = 0;
        
        for(int i = 0; i < N; i++){
            String aux= randomString(7);
            double similarity = minhash.jaccardSimilarity(Shingle.getShingles(aux,1), Shingle.getShingles(str,1));
            //System.err.println(jacSim);
            if(similarity >= thresHold) valid++;
        }
        
        System.out.println("Strings within the ThresHold: "+valid);
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
