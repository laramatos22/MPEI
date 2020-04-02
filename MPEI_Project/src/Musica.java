import java.util.*;

public class Musica{
    private String titulo;
    private String lyrics;
    private String genero;
    private String artista; 
    private String ano;
    private Set<String> set=null;

    public Musica(String titulo ,String ano ,String artista ,String genero ,String lyrics){
        this.lyrics=removeSpecial(lyrics);
        this.titulo=titulo;
        this.genero=genero;
        this.artista=artista;
        this.ano=ano;
    }

    public void addLyrics(String[] lines){
        String aux=lyrics;
        for(int i=0 ; i<lines.length ; i++){
          aux+=" "+removeSpecial(lines[i]);  
        }
        lyrics=aux;
    }

    public Set<String> getShingle(int k){
        if(set==null)set = Shingle.getShingles(lyrics, k);
        return set;
    }

    private String removeSpecial(String s) {
        s.replaceAll("\\p{Punct}", "");
        s = s.toLowerCase();
        s = s.trim();
        return s;
    }

    public String toString(){
        return titulo() + " ,Genero" +genero + " ,Artista " +artista + " ,Ano " +ano;
    }

    public String titulo(){return titulo;}
    public String lyrics(){return lyrics;} 
    public String genero(){return genero;} 
    public String artista(){return artista;} 
    public String ano(){return ano;}


}
