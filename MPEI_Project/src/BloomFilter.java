import java.util.*;
import static java.lang.Math.*;
public class BloomFilter{
    private boolean []filter;
	private int n;
	private int m;
	private int k;

    public BloomFilter(int length){
        this.n = length * 4;
		this.m = length;
		this.k = (int)Math.ceil(((n/m) * Math.log(2)));
        filter = new boolean[n];
    }

    public boolean[] filter(){return filter;}

    public int string2hash(String elem){
        long hash = 0;
        
		for(int i = 0; i < elem.length(); i++) {
			hash += ((long)(elem.charAt(i)) * (i+3) * 431);
        }
        int val = (int)hash;
        if(val < 0)val+=filter.length;

		return val;
    }

    public boolean[] insert(String elem){
        String key = elem;
        for(int i=0 ; i<k ; i++){
            int aux = string2hash(key);
			int pos = aux % (filter.length);
            filter[pos] = true;
            key = key +i;
        }

        return filter;
    }

    public boolean isMember(String elem){
        String key = elem;
        //percorrer o filter para procurar todos os elem no filtro e usar para o k no segundo for
        key = elem;
        for(int i=0 ; i<k ; i++){
            int aux = string2hash(key);
            int pos = aux % (filter.length);
            if(!filter[pos])return false;
            key = key+i;		    
        } 
        return true;
    }



}