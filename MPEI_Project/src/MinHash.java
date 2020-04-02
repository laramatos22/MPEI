import java.util.*;
import static java.lang.Math.*;

public class MinHash{
	private int[]hash;
	private int numHash;

    public MinHash(int numHash){
        this.numHash = numHash;
		hash = new int[numHash];
		//minhash = new int[numhash][nShingles];
		//adicionar os valores á hash
		for(int i = 0; i < numHash; i++) {
			hash[i] = Math.abs((int)Math.random() * 100003);
		}
	}
	
    public double jaccardSimilarity(Set<String> set1, Set<String> set2){
		Set<Integer> hashset1 = new TreeSet<Integer>(toArrayList(getHashSet(set1)));
		Set<Integer> hashset2 = new TreeSet<Integer>(toArrayList(getHashSet(set2)));
		
		Set<Integer> intercesao = new TreeSet<Integer>();
		intercesao.addAll(hashset1);
		intercesao.retainAll(hashset2);
		
		Set<Integer> uniao = new TreeSet<>();
		uniao.addAll(hashset1);
		uniao.addAll(hashset2);
		
		return (double) intercesao.size() / (double) uniao.size();
    }

	public double jaccardDistance(Set<String> set1, Set<String> set2){
		return 1-jaccardSimilarity(set1,set2);
	}


    public static List<Integer> toArrayList (int[] array) {
		List<Integer> list = new ArrayList<>();
		for(int elem : array) {
			list.add(elem);
		}
		return list;
	}
	
	public int[] getHashSet(Set<String> shingles) {
		int[] hashValues = new int[shingles.size()];
		Iterator<String> iterator = shingles.iterator();
		for(int i=0 ; i<shingles.size() ; i++){
			int min = Integer.MAX_VALUE;
			String shingle = iterator.next();
			for(int j=0; j < numHash; j++) {
				int temp = hashFunction(shingle,hash[j]);
				//Valor minimo
				min = Math.min(min, temp);
			}
			hashValues[i] = min;
		}
        return hashValues;
	}

	private int hashFunction(String shingle ,int k){
		return abs(((string2hash(shingle) ^k)%100003));
	}	

	private int string2hash(String elem){
        long hash = 0;
        
		for(int i = 0; i < elem.length(); i++) {
			hash += ((long)(elem.charAt(i)) * (i+8) * 431);
        }
        int val = (int)hash;
		return val;
	}



}