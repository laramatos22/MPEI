import java.io.*;
import java.nio.*;
import java.util.*;

public class LetrasMusicais{
    static Scanner sc = new Scanner(System.in);
    static Scanner scs = new Scanner(System.in);
    public static void main(String[] args)throws IOException{
        AppLetras app = new AppLetras(new File(new File("lyrics.txt").getAbsolutePath())
        ,100000);//(ficheiro ,numero de musicas do ficheiro) para o maximo por Integer.MAX_VALUE
        int op=9;
        while(op!=0){
            System.out.println("        Menu");
            System.out.println();
            System.out.println("1: Listar Musicas");
            System.out.println("2: Letras com a sequencia de palavras str");
            System.out.println("3: Musica mais Similar");
            System.out.println("4: Similaridade Superior a N");
            System.out.println("0: Terminar o Programa");
            
            System.out.print("Escolher: ");
            op = sc.nextInt();
            switch(op){

                case 1:
                    app.printMusicas();
                break;
                case 2:
                    System.out.print("Frase: ");
                    String str = "";
                    str = scs.nextLine();
                    app.getPalavras(str);
                
                break;
                case 3:
                    System.out.print("indice da musica: ");
                    int index = sc.nextInt();
                    app.showSimilar(index);
                break;
                case 4:
                    System.out.print("Similaridade superior a: ");
                    double threshHold = sc.nextDouble();
                    app.getSimilarities(threshHold);
                break;
                case 5:
                    System.exit(0);
                break;



            }
          


        }



    }
}
