import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.*;
import java.util.*;
import java.util.List;
import java.nio.file.Paths;
import javax.swing.*;
import javax.swing.event.*;
import javax.swing.tree.*;
import java.nio.*;
import java.nio.file.*;
import java.lang.OutOfMemoryError;
//java.lang.OutOfMemoryError Java heap space
/* try {
    byte[] bytes = new byte[MEGABYTE*500];
} catch (Exception e) {
    e.printStackTrace();
} catch (OutOfMemoryError e) { 
}
*/
public class AppLetras{
    
    private List<Musica>musicas;
    private BloomFilter bloomfilter;
    private MinHash minhash;
    private final int k=10;
    private HashMap<String,Double> usedSim;

    public AppLetras(File f, int n)throws IOException{this(f.getName(),n);}


    public AppLetras(String f,int numMusicas)throws IOException{
        readFile(f,numMusicas);
        minhash = new MinHash(50);
        usedSim = new HashMap<>();
    }

    public void readFile(String f,int n)throws IOException{
        System.out.println("Reading File ....");
        List<String> info = new ArrayList<>();
        info = Files.readAllLines(Paths.get(f));
        int num=-1;
        musicas = new ArrayList<>();
        for(int i=1 ; i<info.size() ; i++){
            if(i==n)break;
            String[] aux = info.get(i).split(",");
            if(aux.length <6){
                musicas.get(num).addLyrics(aux);
            }else if(!Character.isDigit(aux[0].charAt(0))){
                musicas.get(num).addLyrics(aux);
            }else{
                musicas.add(new Musica(aux[1],aux[2],aux[3],aux[4],aux[5]));
                num++;
            }

        }
    }

    private String removeSpecial(String s) {
        return s.replaceAll("\\p{Punct}", "");
    }

    public void printMusicas(){
        int index=0;
        for(Musica m:musicas){
            System.out.println(index +": "+m.toString());
            index++;
        }
    }

    public void getPalavras(String seq){
        //fazer um bloomfilter dos shingles
        seq = removeSpecial(seq);
        seq = seq.toLowerCase();
        //String[]temp = seq.split(" ");
        //seq ="";
        //for(int i=0 ; i<temp.length ; i++){
            //seq+=temp[i];
        //}
        Set<String> s = Shingle.getShingles(seq, 1);
        for(int i=0 ; i<musicas.size() ; i++){
            boolean check = true;
            Set<String> sh = musicas.get(i).getShingle(seq.length());
            if(sh.size()>0){
                bloomfilter = new BloomFilter(sh.size());
                Iterator iterator = sh.iterator();
                while(iterator.hasNext()){
                    bloomfilter.insert((String)iterator.next());
                }
                /* String[] aux = musicas.get(i).lyrics().split(" ");
                bloomfilter = new BloomFilter(aux.length);
                for(int j=0 ; j<aux.length  ; j++){
                    bloomfilter.insert(aux[j]);
                }  */
                if(bloomfilter.isMember(seq))System.out.println(musicas.get(i).toString());
                //Iterator it = s.iterator();
                //while(it.hasNext()){
                    //if(!bloomfilter.isMember((String)it.next())){
                        //check=false;
                        //break;
                    //}
                //}
                //if(check)System.out.println(musicas.get(i).toString()); 
            }
        }
    }

    private Musica getMostSimilar(Musica mus){
        double max=0;
        Musica musica=null;
        double jSim=0;
        Set<String> sh1 = mus.getShingle(10);
        for(Musica m: musicas){
            Set<String> sh2 = m.getShingle(10);
            if(!m.titulo().equals(mus.titulo())){
                String str="";
                str = "["+mus.titulo()+"/"+m.titulo()+"]";
                if(usedSim.containsKey(str)) jSim = usedSim.get(str);
                else{ 
                    jSim = jaccardSimilarity(sh1,sh2);
                    usedSim.put(str,jSim);
                }
                
                if(max < jSim){
                    max = jSim;
                    musica = m;
                }
            }

        }
        System.out.println("Musica mais similar: "+mus.titulo()+"/"+musica.titulo() + " ---> ("+max+")");
        return musica;
    }

    public Musica showSimilar(int i){
        return getMostSimilar(musicas.get(i));
    }

    public void getSimilarities(double threshHold){
        double jSim=0;

        for(int i=0 ; i<musicas.size()-1 ; i++){
            Set<String> sh1 = musicas.get(i).getShingle(10);
            for(int j=i+1 ; j<musicas.size() ; j++){
                Set<String> sh2 = musicas.get(j).getShingle(10);;
                if(!musicas.get(j).titulo().equals(musicas.get(i).titulo())){
                    String str="";
                    str = "["+musicas.get(i).titulo()+"/"+musicas.get(j).titulo()+"]";
                    if(usedSim.containsKey(str)) jSim = usedSim.get(str);
                    else{ 
                        jSim = jaccardSimilarity(sh1,sh2);
                        usedSim.put(str,jSim);
                    }
                    //System.out.println(jSim);
                    if(jSim>=threshHold)System.out.println("Similaridade ["+musicas.get(i).titulo()+"/"+musicas.get(j).titulo()+"]: "+jSim);
                    //else break;
                }
            }
        }
    }

    public double jaccardSimilarity(Set<String> sh1 ,Set<String> sh2){
        return minhash.jaccardSimilarity(sh1, sh2);
    }

    



}