/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package SopaLetras;

import java.util.Random;

/**
 *
 * @author Jerlany
 */
public class ClsSopaLetras {
    
    private char matriz[][] = new char [10][10];
    private char matriz_palabras[][] = new char [10][10];
    private String vector[] = new String [10];
    private  Random R = new Random();
    boolean vacia = true;
    private final int HORIZONTAL = 0;
    
    
   
    
    public void SetMariz(int f, int c, char valor){
        matriz[f][c] = valor;
    } 
    public char GetMatriz(int f, int c){
        return matriz[f][c];
    }

    //Metodo    que Llena la matriz con Letras 
    public void LlenarMatriz(){
        if(vacia){
        int valor = 0;
        for (int f = 0; f <matriz.length; f++){
            for (int c = 0; c < matriz.length; c++){
                valor = R.nextInt(26)+65;
                char letra = (char) valor;
                matriz[f][c] = letra;
                matriz_palabras[f][c]=' ';
            }
        }
        }
        vacia=false;
    }
    
    public String UbicarPalabra(){
        String palabra;    
        String resultado = "";
        boolean finalizado = false;
        int cont = 0;
        while(!finalizado|cont==vector.length){
            if(vector[cont]!=null){
                cont++;
            }else{
                finalizado =true;
            }
        }
        for(int i = 0; i < cont; i++){
            palabra = vector[i];
           
 
            for(int j=0; j<10; j++){
                
                    resultado = resultado + BuscarEnFila(palabra, j);
                    resultado = resultado + BuscarEnColumna (palabra, j);
                
                
            }
        }
        javax.swing.JOptionPane.showMessageDialog(null, resultado);
        return resultado;
                
                
                
    }
    
    public String BuscarEnFila(String palabra, int fila){
        String resultado = "";
        int pos = 0;
        for(int i =0; i<(10-palabra.length());i++){
            pos = 0;
            if((""+matriz[fila][i]).equalsIgnoreCase(""+palabra.charAt(pos))){
                int c = i+1;
                boolean correcto = true;
                while( correcto && c<(i+(palabra.length()-1))){
                    pos++;
                    if((""+palabra.charAt(pos)).equalsIgnoreCase((""+matriz[fila][c]))){
                        c++;
                    }else{
                        correcto = false;
                    }
                }
                if(correcto){
                    resultado = "La palabra " + palabra + " se encuentra en la fila " +fila + " desde la columna "+ i+" hasta la columna "+ (i+(palabra.length()-1))+"\n";
                }
            }
        }
        return resultado;
    }
    
        public String BuscarEnColumna(String palabra, int columna){
        String resultado = "";
        int pos = 0;
        for(int i =0; i<=(10-palabra.length());i++){
            pos = 0;
            if((""+matriz[i][columna]).equalsIgnoreCase(""+palabra.charAt(pos))){
                int c = i+1;
                boolean correcto = true;
                while( correcto && c<(i+(palabra.length()-1))){
                    pos++;
                    if((""+palabra.charAt(pos)).equalsIgnoreCase((""+matriz[c][columna]))){
                        c++;
                    }else{
                        correcto = false;
                    }
                }
                if(correcto){
                    resultado = "La palabra " + palabra + " se encuentra en la columna " +columna + " desde la fila "+ i+" hasta la fila "+ (i+(palabra.length()-1))+"\n";
                }
            }
        }
        return resultado;
    }
    
    public void IntroducirPalabra(String palabra){
        
        boolean insertado = false;
        if(palabra.length()<=10){
          int ubicacion =0;
          while(!insertado){
              if(vector[ubicacion]== null){
                  vector[ubicacion]=palabra;
                  insertado = true;
              }else{
                  ubicacion ++;
              }
          }
          insertado = false;
          while(!insertado){
             int x = R.nextInt(10);
             int y = R.nextInt(10);
             int orientacion = R.nextInt(2);
        
             
              
               if(analizarEspacio(x,y,orientacion,palabra)){
                   
                   if(orientacion == HORIZONTAL){
                       
                       for(int i =0; i< palabra.length();i++){
                           char letra = palabra.charAt(i);
                           matriz_palabras[x][y+i]=letra;
                           matriz[x][y+i]=letra;
                       }
                       
                   }else{
                       for(int i =0; i< palabra.length();i++){
                           char letra = palabra.charAt(i);
                           matriz_palabras[x+i][y]=letra;
                           matriz[x+i][y]=letra;
                       }
                   }
                   insertado = true;
               } 
             
             
          
          }
        }
        
    }

    private boolean analizarEspacio(int x, int y, int orientacion, String palabra) {
        
        boolean posible = true;
        
        for(int i =0; i< palabra.length();i++){
            if(orientacion == HORIZONTAL){
                
                if(y+i >= 10 || (matriz_palabras[x][y+i])!= ' '){
                  posible = false;
                }
                
            }else{
                
                if(x+i >= 10 || (matriz_palabras[x+i][y])!= ' '){
                  posible = false;
                }
            }
        }
        

        
        return posible;
    }




}

