import java.util.Set;
import java.util.TreeSet;
public class Shingle {
	
	public static Set<String> getShingles(String str,int k) {
		Set<String> set = new TreeSet<>();
		for(int i = 0 ; i <= str.length()-k ; i++) {
			set.add(str.substring(i, i+k));
		}
		return set;
	}
}